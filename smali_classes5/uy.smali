.class public final Luy;
.super Ljava/lang/Object;
.source "HtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luy$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x20

    .line 48
    const/4 v0, 0x0

    new-instance v1, Luy$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Luy$a;-><init>(B)V

    invoke-static {p0, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0xfffc

    .line 49
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa0

    .line 50
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/high16 v8, 0x40000

    if-le v7, v8, :cond_0

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "<html><head/><body>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</body></html>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 228
    .local v0, "buff":Ljava/lang/StringBuilder;
    .local v3, "m":Ljava/util/regex/Matcher;
    .local v4, "reader":Ljava/io/StringReader;
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    return-object p0

    .line 164
    .end local v0    # "buff":Ljava/lang/StringBuilder;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "reader":Ljava/io/StringReader;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 165
    .restart local v4    # "reader":Ljava/io/StringReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x200

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 169
    .restart local v0    # "buff":Ljava/lang/StringBuilder;
    :goto_1
    :sswitch_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/StringReader;->read()I

    move-result v1

    .local v1, "c":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 171
    sparse-switch v1, :sswitch_data_0

    .line 185
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 189
    .end local v1    # "c":I
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 193
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Could not read string to convert text to HTML:"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 197
    const-string/jumbo v7, "\\s*([-=_]{30,}+)\\s*"

    const-string/jumbo v8, "<hr />"

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    const-string/jumbo v7, "(?m)^([^\r\n]{4,}[\\s\\w,:;+/])(?:\r\n|\n|\r)(?=[a-z]\\S{0,10}[\\s\\n\\r])"

    const-string/jumbo v8, "$1 "

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 199
    const-string/jumbo v7, "(?m)(\r\n|\n|\r){4,}"

    const-string/jumbo v8, "\n\n"

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 201
    sget-object v7, Luz;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 202
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit16 v7, v7, 0x200

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 203
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v7, "<html><head></head><body>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 206
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 207
    .local v6, "start":I
    if-eqz v6, :cond_2

    if-eqz v6, :cond_4

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_4

    .line 209
    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_3

    .line 211
    const-string/jumbo v7, "<a href=\"$0\">$0</a>"

    invoke-virtual {v3, v5, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 174
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "start":I
    .restart local v1    # "c":I
    :sswitch_1
    :try_start_1
    const-string/jumbo v7, "&amp;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 177
    :sswitch_2
    const-string/jumbo v7, "&lt;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 180
    :sswitch_3
    const-string/jumbo v7, "&gt;"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 215
    .end local v1    # "c":I
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v6    # "start":I
    :cond_3
    const-string/jumbo v7, "<a href=\"http://$0\">$0</a>"

    invoke-virtual {v3, v5, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 220
    :cond_4
    const-string/jumbo v7, "$0"

    invoke-virtual {v3, v5, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 224
    .end local v6    # "start":I
    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 225
    const-string/jumbo v7, "</body></html>"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 228
    goto/16 :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method
