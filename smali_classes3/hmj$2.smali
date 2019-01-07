.class final Lhmj$2;
.super Ljava/lang/Object;
.source "LocalMiniAppListSPSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhmj;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhmj;


# direct methods
.method constructor <init>(Lhmj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhmj;

    .prologue
    .line 56
    iput-object p1, p0, Lhmj$2;->b:Lhmj;

    iput-object p2, p0, Lhmj$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    const-string/jumbo v0, "LocalMiniAppListSPSourceImpl"

    iget-object v1, p0, Lhmj$2;->b:Lhmj;

    iget-object v2, p0, Lhmj$2;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lhmj;->a(Lhmj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lhrn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
