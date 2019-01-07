.class public final Lfbd$5;
.super Ljava/lang/Object;
.source "SecurityAPIImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfbd;


# direct methods
.method public constructor <init>(Lfbd;)V
    .locals 0
    .param p1, "this$0"    # Lfbd;

    .prologue
    .line 197
    iput-object p1, p0, Lfbd$5;->a:Lfbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 200
    const-class v2, Lcom/alibaba/android/user/idl/services/SafeIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/SafeIService;

    .line 201
    .local v0, "safeIService":Lcom/alibaba/android/user/idl/services/SafeIService;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lfxj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "token":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    new-instance v2, Lfbd$5$1;

    invoke-direct {v2, p0}, Lfbd$5$1;-><init>(Lfbd$5;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/idl/services/SafeIService;->reportAfterProcessStart(Ljava/lang/String;Liyv;)V

    .line 208
    :cond_0
    return-void
.end method
