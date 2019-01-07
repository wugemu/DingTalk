.class final enum Lorg/jsoup/parser/TokeniserState$57;
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
    .line 1330
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method final read(Lles;Llem;)V
    .locals 3
    .param p1, "t"    # Lles;
    .param p2, "r"    # Llem;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 1332
    invoke-virtual {p2}, Llem;->c()C

    move-result v0

    .line 1333
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1354
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iget-object v1, v1, Lorg/jsoup/parser/Token$c;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1356
    :goto_0
    return-void

    .line 1335
    :sswitch_0
    sget-object v1, Lorg/jsoup/parser/TokeniserState$57;->AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 2113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1338
    :sswitch_1
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1339
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iget-object v1, v1, Lorg/jsoup/parser/Token$c;->c:Ljava/lang/StringBuilder;

    const v2, 0xfffd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1342
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1343
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iput-boolean v2, v1, Lorg/jsoup/parser/Token$c;->e:Z

    .line 1344
    invoke-virtual {p1}, Lles;->d()V

    .line 1345
    sget-object v1, Lorg/jsoup/parser/TokeniserState$57;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 3113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1348
    :sswitch_3
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 1349
    iget-object v1, p1, Lles;->l:Lorg/jsoup/parser/Token$c;

    iput-boolean v2, v1, Lorg/jsoup/parser/Token$c;->e:Z

    .line 1350
    invoke-virtual {p1}, Lles;->d()V

    .line 1351
    sget-object v1, Lorg/jsoup/parser/TokeniserState$57;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 4113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1333
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x22 -> :sswitch_0
        0x3e -> :sswitch_2
        0xffff -> :sswitch_3
    .end sparse-switch
.end method
