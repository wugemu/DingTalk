.class Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;
.super Ljava/lang/Object;
.source "ApplicationDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementContext"
.end annotation


# instance fields
.field private mElement:Landroid/app/Application;

.field private final mListener:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext$1;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->mListener:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;

    .line 66
    return-void
.end method


# virtual methods
.method public getActivitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;->access$000(Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;)Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->getActivitiesView()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hook(Landroid/app/Application;)V
    .locals 2
    .param p1, "element"    # Landroid/app/Application;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->mElement:Landroid/app/Application;

    .line 70
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;->access$000(Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;)Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->mListener:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->registerListener(Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;)V

    .line 71
    return-void
.end method

.method public unhook()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;->access$000(Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;)Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->mListener:Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker;->unregisterListener(Lcom/taobao/weex/devtools/inspector/elements/android/ActivityTracker$Listener;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor$ElementContext;->mElement:Landroid/app/Application;

    .line 76
    return-void
.end method
