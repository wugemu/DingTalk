.class final Lgon$87;
.super Ljava/lang/Object;
.source "SpaceRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lgkl;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lgon;


# direct methods
.method constructor <init>(Lgon;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lgon;

    .prologue
    .line 4234
    iput-object p1, p0, Lgon$87;->b:Lgon;

    iput-object p2, p0, Lgon$87;->a:Lcma;

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
    .line 4237
    iget-object v0, p0, Lgon$87;->a:Lcma;

    const-string/jumbo v1, "SERVICE_NULL"

    const-string/jumbo v2, "mCSpaceAclService is null"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    return-void
.end method
