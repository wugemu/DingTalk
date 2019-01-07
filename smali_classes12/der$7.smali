.class final Lder$7;
.super Ljava/lang/Object;
.source "BeginnerGuideManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lder;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic c:Lder;


# direct methods
.method constructor <init>(Lder;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V
    .locals 0
    .param p1, "this$0"    # Lder;

    .prologue
    .line 302
    iput-object p1, p0, Lder$7;->c:Lder;

    iput-object p2, p0, Lder$7;->a:Landroid/app/Activity;

    iput-object p3, p0, Lder$7;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lder$7;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lder$7;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 308
    :cond_0
    return-void
.end method
