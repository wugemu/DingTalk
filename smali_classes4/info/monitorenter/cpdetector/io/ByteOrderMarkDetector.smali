.class public Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "ByteOrderMarkDetector.java"

# interfaces
.implements Linfo/monitorenter/cpdetector/io/ICodepageDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    return-void
.end method


# virtual methods
.method public detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    invoke-static {}, Lkfg;->a()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 115
    .local v1, "result":Ljava/nio/charset/Charset;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 116
    .local v0, "readByte":I
    sparse-switch v0, :sswitch_data_0

    move-object v2, v1

    .line 287
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .local v2, "result":Ljava/nio/charset/Charset;
    :goto_0
    return-object v2

    .line 119
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :sswitch_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 120
    packed-switch v0, :pswitch_data_0

    move-object v2, v1

    .line 153
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 123
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 124
    packed-switch v0, :pswitch_data_1

    move-object v2, v1

    .line 148
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 129
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_1
    :try_start_0
    const-string/jumbo v3, "UCS-4BE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 133
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 131
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "UCS-4BE"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_1

    .line 140
    :pswitch_2
    :try_start_1
    const-string/jumbo v3, "UCS-4"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    move-object v2, v1

    .line 144
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 142
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :catch_1
    move-exception v3

    const-string/jumbo v3, "UCS-4"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_2

    .line 158
    :sswitch_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 159
    packed-switch v0, :pswitch_data_2

    move-object v2, v1

    .line 203
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 163
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 164
    packed-switch v0, :pswitch_data_3

    .line 192
    :try_start_2
    const-string/jumbo v3, "UTF-16BE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    :goto_3
    move-object v2, v1

    .line 196
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 167
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 168
    packed-switch v0, :pswitch_data_4

    .line 181
    :try_start_3
    const-string/jumbo v3, "UTF-16BE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_3
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    :goto_4
    move-object v2, v1

    .line 185
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 173
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_5
    :try_start_4
    const-string/jumbo v3, "UCS-4"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_4
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    :goto_5
    move-object v2, v1

    .line 177
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 175
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :catch_2
    move-exception v3

    const-string/jumbo v3, "UCS-4"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_5

    .line 183
    :catch_3
    move-exception v3

    const-string/jumbo v3, "UTF-16BE"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_4

    .line 194
    :catch_4
    move-exception v3

    const-string/jumbo v3, "UTF-16BE"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_3

    .line 210
    :sswitch_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 211
    packed-switch v0, :pswitch_data_5

    move-object v2, v1

    .line 253
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto/16 :goto_0

    .line 215
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 216
    packed-switch v0, :pswitch_data_6

    .line 244
    :try_start_5
    const-string/jumbo v3, "UTF-16LE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_5
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v1

    :goto_6
    move-object v2, v1

    .line 248
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto/16 :goto_0

    .line 219
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_7
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 220
    packed-switch v0, :pswitch_data_7

    .line 234
    :try_start_6
    const-string/jumbo v3, "UTF-16LE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_6
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v1

    :goto_7
    move-object v2, v1

    .line 238
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto/16 :goto_0

    .line 225
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_8
    :try_start_7
    const-string/jumbo v3, "UCS-4LE"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_7
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v1

    :goto_8
    move-object v2, v1

    .line 229
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto/16 :goto_0

    .line 227
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :catch_5
    move-exception v3

    const-string/jumbo v3, "UCS-4LE"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_8

    .line 236
    :catch_6
    move-exception v3

    const-string/jumbo v3, "UTF-16LE"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_7

    .line 246
    :catch_7
    move-exception v3

    const-string/jumbo v3, "UTF-16LE"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_6

    .line 259
    :sswitch_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 260
    packed-switch v0, :pswitch_data_8

    move-object v2, v1

    .line 281
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto/16 :goto_0

    .line 263
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_9
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 264
    packed-switch v0, :pswitch_data_9

    move-object v2, v1

    .line 275
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto/16 :goto_0

    .line 267
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :pswitch_a
    :try_start_8
    const-string/jumbo v3, "utf-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_8
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v1

    :goto_9
    move-object v2, v1

    .line 271
    .end local v1    # "result":Ljava/nio/charset/Charset;
    .restart local v2    # "result":Ljava/nio/charset/Charset;
    goto/16 :goto_0

    .line 269
    .end local v2    # "result":Ljava/nio/charset/Charset;
    .restart local v1    # "result":Ljava/nio/charset/Charset;
    :catch_8
    move-exception v3

    const-string/jumbo v3, "utf-8"

    invoke-static {v3}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_9

    .line 116
    .line 120
    .line 124
    .line 159
    .line 164
    .line 168
    .line 211
    .line 216
    .line 220
    .line 260
    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xef -> :sswitch_3
        0xfe -> :sswitch_1
        0xff -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfe
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xff
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xfe
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xbb
        :pswitch_9
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xbf
        :pswitch_a
    .end packed-switch
.end method

.method public detectCodepage(Ljava/net/URL;)Ljava/nio/charset/Charset;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 302
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 303
    .local v0, "in":Ljava/io/BufferedInputStream;
    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v2}, Linfo/monitorenter/cpdetector/io/ByteOrderMarkDetector;->detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 304
    .local v1, "result":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 305
    return-object v1
.end method
