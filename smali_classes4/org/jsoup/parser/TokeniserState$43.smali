.class final enum Lorg/jsoup/parser/TokeniserState$43;
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
    .line 937
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
    .line 941
    invoke-virtual {p2}, Llem;->d()V

    .line 942
    new-instance v0, Lorg/jsoup/parser/Token$b;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$b;-><init>()V

    .line 943
    .local v0, "comment":Lorg/jsoup/parser/Token$b;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/parser/Token$b;->c:Z

    .line 944
    iget-object v1, v0, Lorg/jsoup/parser/Token$b;->b:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {p2, v2}, Llem;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {p1, v0}, Lles;->a(Lorg/jsoup/parser/Token;)V

    .line 947
    sget-object v1, Lorg/jsoup/parser/TokeniserState$43;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p1, v1}, Lles;->a(Lorg/jsoup/parser/TokeniserState;)V

    .line 948
    return-void
.end method
