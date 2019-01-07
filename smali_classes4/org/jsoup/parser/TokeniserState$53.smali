.class final enum Lorg/jsoup/parser/TokeniserState$53;
.super Lorg/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 4
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1194
    invoke-virtual {p2}, Llem;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1195
    invoke-virtual {p2}, Llem;->h()Ljava/lang/String;

    move-result-object v1

    .line 1196
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iget-object v2, v2, Lorg/jsoup/parser/Token$c;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 1199
    :cond_0
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 1200
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1223
    iget-object v2, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iget-object v2, v2, Lorg/jsoup/parser/Token$c;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1202
    :sswitch_0
    invoke-virtual {p1}, Lles;->d()V

    .line 1203
    sget-object v2, Lorg/jsoup/parser/TokeniserState$53;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1210
    :sswitch_1
    sget-object v2, Lorg/jsoup/parser/TokeniserState$53;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1213
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1214
    iget-object v2, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iget-object v2, v2, Lorg/jsoup/parser/Token$c;->b:Ljava/lang/StringBuilder;

    const v3, 0xfffd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1217
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 1218
    iget-object v2, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/jsoup/parser/Token$c;->e:Z

    .line 1219
    invoke-virtual {p1}, Lles;->d()V

    .line 1220
    sget-object v2, Lorg/jsoup/parser/TokeniserState$53;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v2, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1200
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x3e -> :sswitch_0
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
