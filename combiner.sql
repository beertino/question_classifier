SELECT TYS.YEAR, TYS.PAPER, TYS."PAPER NO", TYS."QUESTION NO", TRIM(TYS.TOPIC) as 'TOPIC',
		TRIM(ADA.PREDICTED_TOPIC) as "ADA_TOPIC", TRIM("GPT3.5".PREDICTED_TOPIC) as "GPT_TOPIC", TRIM("all-distilroberta-v1".PREDICTED_TOPIC) as "all-distilroberta-v1_TOPIC",
		TRIM("all-MiniLM-L12-v1".PREDICTED_TOPIC) as "all-MiniLM-L12-v1_TOPIC", TRIM("all-mpnet-base-v2".PREDICTED_TOPIC) as "all-mpnet-base-v2_TOPIC",
		TRIM("gtr-t5-base".PREDICTED_TOPIC) as "gtr-t5-base_TOPIC", TRIM("sentence-t5-base".PREDICTED_TOPIC) as "sentence-t5-base_TOPIC"
FROM TYS 
INNER JOIN ADA
ON (TYS.YEAR = ADA.YEAR) 
	AND (TYS.PAPER = ADA.PAPER)
	AND (TYS."PAPER NO" = ADA."PAPER NO")
	AND (TYS."QUESTION NO" = ADA."QUESTION NO")
INNER JOIN "GPT3.5"
ON (TYS.YEAR = "GPT3.5".YEAR) 
	AND (TYS.PAPER = "GPT3.5".PAPER)
	AND (TYS."PAPER NO" = "GPT3.5"."PAPER NO")
	AND (TYS."QUESTION NO" = "GPT3.5"."QUESTION NO")
INNER JOIN "all-distilroberta-v1"
ON (TYS.YEAR = "all-distilroberta-v1".YEAR) 
	AND (TYS.PAPER = "all-distilroberta-v1".PAPER)
	AND (TYS."PAPER NO" = "all-distilroberta-v1"."PAPER NO")
	AND (TYS."QUESTION NO" = "all-distilroberta-v1"."QUESTION NO")
INNER JOIN "all-MiniLM-L12-v1"
ON (TYS.YEAR = "all-MiniLM-L12-v1".YEAR) 
	AND (TYS.PAPER = "all-MiniLM-L12-v1".PAPER)
	AND (TYS."PAPER NO" = "all-MiniLM-L12-v1"."PAPER NO")
	AND (TYS."QUESTION NO" = "all-MiniLM-L12-v1"."QUESTION NO")
INNER JOIN "all-mpnet-base-v2"
ON (TYS.YEAR = "all-mpnet-base-v2".YEAR) 
	AND (TYS.PAPER = "all-mpnet-base-v2".PAPER)
	AND (TYS."PAPER NO" = "all-mpnet-base-v2"."PAPER NO")
	AND (TYS."QUESTION NO" = "all-mpnet-base-v2"."QUESTION NO")
INNER JOIN "gtr-t5-base"
ON (TYS.YEAR = "gtr-t5-base".YEAR) 
	AND (TYS.PAPER = "gtr-t5-base".PAPER)
	AND (TYS."PAPER NO" = "gtr-t5-base"."PAPER NO")
	AND (TYS."QUESTION NO" = "gtr-t5-base"."QUESTION NO")		
INNER JOIN "sentence-t5-base"
ON (TYS.YEAR = "sentence-t5-base".YEAR) 
	AND (TYS.PAPER = "sentence-t5-base".PAPER)
	AND (TYS."PAPER NO" = "sentence-t5-base"."PAPER NO")
	AND (TYS."QUESTION NO" = "sentence-t5-base"."QUESTION NO")
WHERE TOPIC IS NOT NULL
