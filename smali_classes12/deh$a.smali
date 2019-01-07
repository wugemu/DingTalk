.class final Ldeh$a;
.super Ljava/lang/Object;
.source "FaceToFaceCreateConversationActivityPermissionCompat.java"

# interfaces
.implements Lbyx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldeh$a;->a:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ldeh$a;-><init>(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    iget-object v1, p0, Ldeh$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    .line 66
    .local v0, "target":Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;
    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Ldeh;->a()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 68
    invoke-static {}, Ldeh;->a()[Ljava/lang/String;

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
    .line 73
    iget-object v1, p0, Ldeh$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    .line 74
    .local v0, "target":Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->b()V

    .line 76
    invoke-static {}, Ldeh;->a()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method
