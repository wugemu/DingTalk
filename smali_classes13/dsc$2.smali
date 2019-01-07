.class final Ldsc$2;
.super Ljava/lang/Object;
.source "ShareDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldsc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ldsc;


# direct methods
.method constructor <init>(Ldsc;Lcma;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Ldsc;

    .prologue
    .line 230
    iput-object p1, p0, Ldsc$2;->c:Ldsc;

    iput-object p2, p0, Ldsc$2;->a:Lcma;

    iput-object p3, p0, Ldsc$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    iget-object v0, p0, Ldsc$2;->a:Lcma;

    iget-object v1, p0, Ldsc$2;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 234
    return-void
.end method
