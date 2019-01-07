.class final Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;
.super Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;
.source "AndroidDocumentProvider.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/DocumentProvider;
.implements Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDescriptorHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;
    }
.end annotation


# static fields
.field private static final INSPECT_HOVER_COLOR:I = 0x404040ff

.field private static final INSPECT_OVERLAY_COLOR:I = 0x40ffffff

.field private static final REPORT_CHANGED_INTERVAL_MS:J = 0x3e8L


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private final mDescriptorMap:Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

.field private final mDocumentRoot:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

.field private final mHighlighter:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

.field private final mInspectModeHandler:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

.field private mIsReportChangesTimerPosted:Z

.field private mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReportChangesTimer:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/taobao/weex/devtools/common/ThreadBound;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "enforcer"    # Lcom/taobao/weex/devtools/common/ThreadBound;

    .prologue
    .line 78
    invoke-direct {p0, p2}, Lcom/taobao/weex/devtools/inspector/helper/ThreadBoundProxy;-><init>(Lcom/taobao/weex/devtools/common/ThreadBound;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mIsReportChangesTimerPosted:Z

    .line 64
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mReportChangesTimer:Ljava/lang/Runnable;

    .line 80
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mApplication:Landroid/app/Application;

    .line 81
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    invoke-direct {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDocumentRoot:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    .line 83
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;-><init>()V

    .line 84
    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->beginInit()Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/WXSDKInstance;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/WXSDKInstanceDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXSDKInstanceDescriptor;-><init>()V

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/ui/component/WXComponent;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXComponentDescriptor;-><init>()V

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/ui/component/WXVContainer;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/WXVContainerDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/WXVContainerDescriptor;-><init>()V

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ActivityDescriptor;-><init>()V

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDocumentRoot:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Landroid/app/Application;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ApplicationDescriptor;-><init>()V

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Landroid/app/Dialog;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/DialogDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/DialogDescriptor;-><init>()V

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDescriptorMap:Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    .line 93
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDescriptorMap:Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/DialogFragmentDescriptor;->register(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    .line 94
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDescriptorMap:Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/FragmentDescriptor;->register(Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/ObjectDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/ObjectDescriptor;-><init>()V

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Landroid/widget/TextView;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/TextViewDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/TextViewDescriptor;-><init>()V

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Landroid/view/View;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewDescriptor;-><init>()V

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewGroupDescriptor;-><init>()V

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    const-class v1, Landroid/view/Window;

    new-instance v2, Lcom/taobao/weex/devtools/inspector/elements/android/WindowDescriptor;

    invoke-direct {v2}, Lcom/taobao/weex/devtools/inspector/elements/android/WindowDescriptor;-><init>()V

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->register(Ljava/lang/Class;Lcom/taobao/weex/devtools/inspector/elements/Descriptor;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->setHost(Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;)Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->endInit()Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    .line 103
    invoke-static {}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;->newInstance()Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mHighlighter:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

    .line 104
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mInspectModeHandler:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mIsReportChangesTimerPosted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getWXSDKInstances()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;
    .param p1, "x1"    # Lcom/taobao/weex/devtools/common/Accumulator;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getWindows(Lcom/taobao/weex/devtools/common/Accumulator;)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mHighlighter:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

    return-object v0
.end method

.method private getWXSDKInstances()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 255
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDocumentRoot:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    invoke-virtual {p0, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    move-result-object v0

    .line 256
    .local v0, "appDescriptor":Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    if-eqz v0, :cond_0

    .line 257
    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$3;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)V

    .line 268
    .local v1, "elementAccumulator":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDocumentRoot:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 270
    .end local v1    # "elementAccumulator":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private getWindows(Lcom/taobao/weex/devtools/common/Accumulator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/devtools/common/Accumulator",
            "<",
            "Landroid/view/Window;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    .local p1, "accumulator":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Landroid/view/Window;>;"
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mApplication:Landroid/app/Application;

    invoke-virtual {p0, v2}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    move-result-object v0

    .line 233
    .local v0, "appDescriptor":Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$2;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 250
    .local v1, "elementAccumulator":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getChildren(Ljava/lang/Object;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 252
    .end local v1    # "elementAccumulator":Lcom/taobao/weex/devtools/common/Accumulator;, "Lcom/taobao/weex/devtools/common/Accumulator<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 111
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mHighlighter:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;->clearHighlight()V

    .line 112
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mInspectModeHandler:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->disable()V

    .line 113
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mReportChangesTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mIsReportChangesTimerPosted:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    .line 116
    return-void
.end method

.method public final getDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDescriptorMap:Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->get(Ljava/lang/Class;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHighlightingView(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 207
    if-nez p1, :cond_1

    move-object v1, v5

    .line 228
    :cond_0
    :goto_0
    return-object v1

    .line 211
    :cond_1
    const/4 v1, 0x0

    .line 212
    .local v1, "highlightingView":Landroid/view/View;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 213
    .local v3, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 214
    .local v2, "lastDescriptor":Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    :goto_1
    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 215
    iget-object v4, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDescriptorMap:Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    invoke-virtual {v4, v3}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->get(Ljava/lang/Class;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    move-result-object v0

    .line 216
    .local v0, "descriptor":Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    if-nez v0, :cond_2

    move-object v1, v5

    .line 217
    goto :goto_0

    .line 220
    :cond_2
    if-eq v0, v2, :cond_3

    instance-of v4, v0, Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 221
    check-cast v4, Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;

    invoke-interface {v4, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/HighlightableDescriptor;->getViewForHighlighting(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 224
    :cond_3
    move-object v2, v0

    .line 225
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 226
    goto :goto_1
.end method

.method public final getNodeDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 141
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getDescriptor(Ljava/lang/Object;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getRootElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 135
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDocumentRoot:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentRoot;

    return-object v0
.end method

.method public final hideHighlight()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 160
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mHighlighter:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;->clearHighlight()V

    .line 161
    return-void
.end method

.method public final highlightElement(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->getHighlightingView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, "highlightingView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mHighlighter:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

    invoke-virtual {v1}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;->clearHighlight()V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mHighlighter:Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;

    invoke-virtual {v1, v0, p2}, Lcom/taobao/weex/devtools/inspector/elements/android/ViewHighlighter;->setHighlightedView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;->onAttributeModified(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public final onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;->onAttributeRemoved(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public final setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 178
    iget-object v1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mDescriptorMap:Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/devtools/inspector/elements/DescriptorMap;->get(Ljava/lang/Class;)Lcom/taobao/weex/devtools/inspector/elements/Descriptor;

    move-result-object v0

    .line 179
    .local v0, "descriptor":Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->setAttributesAsText(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method public final setInspectModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mInspectModeHandler:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->enable()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mInspectModeHandler:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->disable()V

    goto :goto_0
.end method

.method public final setListener(Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 122
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    .line 123
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mIsReportChangesTimerPosted:Z

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mIsReportChangesTimerPosted:Z

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mReportChangesTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mListener:Lcom/taobao/weex/devtools/inspector/elements/DocumentProviderListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mIsReportChangesTimerPosted:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mIsReportChangesTimerPosted:Z

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->mReportChangesTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
