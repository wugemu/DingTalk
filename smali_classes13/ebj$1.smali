.class public final Lebj$1;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lebj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcma;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lebj$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lebj$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lebj$1;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v1, p0, Lebj$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lebj$1;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lebj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 104
    .local v0, "exist":Z
    iget-object v1, p0, Lebj$1;->c:Lcma;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lebj$1;->c:Lcma;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-void
.end method
