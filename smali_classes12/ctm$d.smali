.class final Lctm$d;
.super Ljava/lang/Object;
.source "ChatMsgActivityPermissionCompat.java"

# interfaces
.implements Lbyx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lctm$d;->a:Ljava/lang/ref/WeakReference;

    .line 325
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lctm$d;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 329
    iget-object v2, p0, Lctm$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 330
    .local v1, "target":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    if-nez v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 331
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 332
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 334
    invoke-static {}, Lctm;->e()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0

    .line 336
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lctm;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lctm;->e()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 343
    iget-object v1, p0, Lctm$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 344
    .local v0, "target":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    if-nez v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 10550
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->finish()V

    .line 346
    invoke-static {}, Lctm;->e()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method
