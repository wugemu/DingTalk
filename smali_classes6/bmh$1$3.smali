.class final Lbmh$1$3;
.super Ljava/lang/Object;
.source "DeviceNpcWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmh$1;->connectInternet(Lbmk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmk;

.field final synthetic b:Lbmh$1;


# direct methods
.method constructor <init>(Lbmh$1;Lbmk;)V
    .locals 0
    .param p1, "this$1"    # Lbmh$1;

    .prologue
    .line 131
    iput-object p1, p0, Lbmh$1$3;->b:Lbmh$1;

    iput-object p2, p0, Lbmh$1$3;->a:Lbmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 134
    iget-object v0, p0, Lbmh$1$3;->b:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    .line 1033
    iget-object v0, v0, Lbmh;->a:Landroid/content/Context;

    .line 134
    iget-object v1, p0, Lbmh$1$3;->a:Lbmk;

    iget-object v1, v1, Lbmk;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/PortalActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lbmh$1$3;->b:Lbmh$1;

    iget-object v0, v0, Lbmh$1;->a:Lbmh;

    invoke-static {v0}, Lbmh;->b(Lbmh;)V

    .line 136
    return-void
.end method
