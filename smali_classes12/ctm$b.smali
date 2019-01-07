.class final Lctm$b;
.super Ljava/lang/Object;
.source "ChatMsgActivityPermissionCompat.java"

# interfaces
.implements Lbyw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lctm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
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

.field private final b:Z

.field private final c:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p2, "showRedDot"    # Z
    .param p3, "chatApp"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lctm$b;->a:Ljava/lang/ref/WeakReference;

    .line 268
    iput-boolean p2, p0, Lctm$b;->b:Z

    .line 269
    iput-object p3, p0, Lctm$b;->c:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 270
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 258
    invoke-direct {p0, p1, p2, p3}, Lctm$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;ZLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 274
    iget-object v1, p0, Lctm$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 275
    .local v0, "target":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {}, Lctm;->c()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 277
    invoke-static {}, Lctm;->c()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    iget-object v1, p0, Lctm$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 283
    .local v0, "target":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lctm;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lctm;->c()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    iget-object v1, p0, Lctm$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 291
    .local v0, "target":Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lctm$b;->c:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    goto :goto_0
.end method
