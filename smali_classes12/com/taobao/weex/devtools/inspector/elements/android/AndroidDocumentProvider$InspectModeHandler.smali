.class final Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;
.super Ljava/lang/Object;
.source "AndroidDocumentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InspectModeHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$OverlayView;
    }
.end annotation


# instance fields
.field private mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewSelector:Lcom/taobao/weex/devtools/common/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/devtools/common/Predicate",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)V
    .locals 1

    .prologue
    .line 272
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$1;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;)V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mViewSelector:Lcom/taobao/weex/devtools/common/Predicate;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;
    .param p2, "x1"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mOverlays:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;)Lcom/taobao/weex/devtools/common/Predicate;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mViewSelector:Lcom/taobao/weex/devtools/common/Predicate;

    return-object v0
.end method


# virtual methods
.method public final disable()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 315
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-virtual {v3}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 317
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mOverlays:Ljava/util/List;

    if-nez v3, :cond_0

    .line 328
    :goto_0
    return-void

    .line 321
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mOverlays:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mOverlays:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 323
    .local v2, "overlayView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 324
    .local v0, "decorViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 327
    .end local v0    # "decorViewGroup":Landroid/view/ViewGroup;
    .end local v2    # "overlayView":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mOverlays:Ljava/util/List;

    goto :goto_0
.end method

.method public final enable()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 283
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-virtual {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->verifyThreadAccess()V

    .line 285
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mOverlays:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->disable()V

    .line 289
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->mOverlays:Ljava/util/List;

    .line 291
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    invoke-static {v0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$300(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;)V

    .line 293
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;->this$0:Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;

    new-instance v1, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler$2;-><init>(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider$InspectModeHandler;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;->access$600(Lcom/taobao/weex/devtools/inspector/elements/android/AndroidDocumentProvider;Lcom/taobao/weex/devtools/common/Accumulator;)V

    .line 312
    return-void
.end method
