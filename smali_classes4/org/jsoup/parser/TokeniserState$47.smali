.class final enum Lorg/jsoup/parser/TokeniserState$47;
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
    .line 1024
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
    .line 1026
    invoke-virtual {p2}, Llem;->b()C

    move-result v0

    .line 1027
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1042
    iget-object v1, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    iget-object v1, v1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    invoke-virtual {p2, v2}, Llem;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    :goto_0
    return-void

    .line 1029
    :sswitch_0
    sget-object v1, Lorg/jsoup/parser/TokeniserState$47;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1032
    :sswitch_1
    invoke-virtual {p1, p0}, Lles;->b(Lorg/jsoup/parser/TokeniserState;)V

    .line 1033
    invoke-virtual {p2}, Llem;->e()V

    .line 1034
    iget-object v1, p1, Lles;->m:Lorg/jsoup/parser/Token$b;

    iget-object v1, v1, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const v2, 0xfffd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1037
    :sswitch_2
    invoke-virtual {p1, p0}, Lles;->c(Lorg/jsoup/parser/TokeniserState;)V

    .line 1038
    invoke-virtual {p1}, Lles;->b()V

    .line 1039
    sget-object v1, Lorg/jsoup/parser/TokeniserState$47;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 1113
    iput-object v1, p1, Lles;->b:Lorg/jsoup/parser/TokeniserState;

    goto :goto_0

    .line 1027
    .line 1042
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch

    :array_0
    .array-data 2
        0x2ds
        0x0s
    .end array-data
.end method
