.class public final Ldml;
.super Ljava/lang/Object;
.source "EscapeChars.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "aRegexFragment"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v2, "result":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/text/StringCharacterIterator;

    invoke-direct {v1, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "iterator":Ljava/text/StringCharacterIterator;
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->current()C

    move-result v0

    .line 34
    .local v0, "character":C
    :goto_0
    const v3, 0xffff

    if-eq v0, v3, :cond_10

    .line 38
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_0

    .line 39
    const-string/jumbo v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :goto_1
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    move-result v0

    goto :goto_0

    .line 40
    :cond_0
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_1

    .line 41
    const-string/jumbo v3, "\\\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 42
    :cond_1
    const/16 v3, 0x3f

    if-ne v0, v3, :cond_2

    .line 43
    const-string/jumbo v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 44
    :cond_2
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_3

    .line 45
    const-string/jumbo v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 46
    :cond_3
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_4

    .line 47
    const-string/jumbo v3, "\\+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 48
    :cond_4
    const/16 v3, 0x26

    if-ne v0, v3, :cond_5

    .line 49
    const-string/jumbo v3, "\\&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :cond_5
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_6

    .line 51
    const-string/jumbo v3, "\\:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 52
    :cond_6
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_7

    .line 53
    const-string/jumbo v3, "\\{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 54
    :cond_7
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_8

    .line 55
    const-string/jumbo v3, "\\}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 56
    :cond_8
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_9

    .line 57
    const-string/jumbo v3, "\\["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    :cond_9
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_a

    .line 59
    const-string/jumbo v3, "\\]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 60
    :cond_a
    const/16 v3, 0x28

    if-ne v0, v3, :cond_b

    .line 61
    const-string/jumbo v3, "\\("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 62
    :cond_b
    const/16 v3, 0x29

    if-ne v0, v3, :cond_c

    .line 63
    const-string/jumbo v3, "\\)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 64
    :cond_c
    const/16 v3, 0x5e

    if-ne v0, v3, :cond_d

    .line 65
    const-string/jumbo v3, "\\^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 66
    :cond_d
    const/16 v3, 0x24

    if-ne v0, v3, :cond_e

    .line 67
    const-string/jumbo v3, "\\$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 68
    :cond_e
    const/16 v3, 0x7c

    if-ne v0, v3, :cond_f

    .line 69
    const-string/jumbo v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 73
    :cond_f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 77
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
