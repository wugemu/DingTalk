.class public abstract Lcom/taobao/weex/ui/component/WXComponent;
.super Lcom/taobao/weex/ui/component/basic/WXBasicComponent;
.source "WXComponent.java"

# interfaces
.implements Lcom/taobao/weex/IWXActivityStateListener;
.implements Lcom/taobao/weex/common/IWXObject;
.implements Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXComponent$RenderState;,
        Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;,
        Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;,
        Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;,
        Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/taobao/weex/ui/component/basic/WXBasicComponent;",
        "Lcom/taobao/weex/IWXActivityStateListener;",
        "Lcom/taobao/weex/common/IWXObject;",
        "Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;"
    }
.end annotation


# static fields
.field public static final PROP_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field public static final PROP_FS_MATCH_PARENT:Ljava/lang/String; = "m"

.field public static final PROP_FS_WRAP_CONTENT:Ljava/lang/String; = "w"

.field public static final ROOT:Ljava/lang/String; = "_root"

.field public static final STATE_ALL_FINISH:I = 0x2

.field public static final STATE_DOM_FINISH:I = 0x0

.field public static final STATE_UI_FINISH:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x1


# instance fields
.field private animations:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

.field private isUsing:Z

.field private mAbsoluteX:I

.field private mAbsoluteY:I

.field private mAnimationHolder:Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;

.field private mAppendEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

.field private mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/ui/component/WXComponent",
            "<TT;>.OnClick",
            "ListenerImp;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDeepInComponentTree:I

.field private mFixedProp:I

.field private mFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private mGestureType:Ljava/util/Set;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

.field mHost:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mHostClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInstance:Lcom/taobao/weex/WXSDKInstance;

.field public mIsAddElementToTree:Z

.field private mIsDestroyed:Z

.field private mIsDisabled:Z

.field private mLastBoxShadowId:Ljava/lang/String;

.field private mLazy:Z

.field private mNeedLayoutOnAnimation:Z

.field private volatile mParent:Lcom/taobao/weex/ui/component/WXVContainer;

.field private mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

.field private mPreRealHeight:I

.field private mPreRealLeft:I

.field private mPreRealTop:I

.field private mPreRealWidth:I

.field private mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

.field private mRippleBackground:Landroid/graphics/drawable/Drawable;

.field private mStickyOffset:I

.field public mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

.field private mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

.field private mType:I

.field private mViewTreeKey:Ljava/lang/String;

.field private waste:Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 3
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "type"    # I
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v2, 0x0

    .line 201
    invoke-direct {p0, p4}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;-><init>(Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 138
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    .line 145
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    .line 146
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    .line 152
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 153
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 154
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 155
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 156
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    .line 159
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    .line 165
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    .line 166
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    .line 167
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    .line 168
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    .line 170
    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 171
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 173
    new-instance v1, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    invoke-direct {v1}, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    .line 178
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    .line 2246
    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    .line 202
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 203
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 205
    iput p3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setViewPortWidth(I)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onCreate()V

    .line 212
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    .local v0, "observer":Lcom/taobao/weex/ComponentObserver;
    if-eqz v0, :cond_1

    .line 213
    invoke-interface {v0, p0}, Lcom/taobao/weex/ComponentObserver;->onCreate(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 215
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 197
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "isLazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 194
    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object v0
.end method

.method private applyBorder(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 6
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 262
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    .line 263
    .local v0, "border":Lcom/taobao/weex/dom/CSSShorthand;
    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v2

    .line 264
    .local v2, "left":F
    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    .line 265
    .local v4, "top":F
    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v3

    .line 266
    .local v3, "right":F
    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v1

    .line 268
    .local v1, "bottom":F
    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v5, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    const-string/jumbo v5, "borderLeftWidth"

    invoke-virtual {p0, v5, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    .line 273
    const-string/jumbo v5, "borderTopWidth"

    invoke-virtual {p0, v5, v4}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    .line 274
    const-string/jumbo v5, "borderRightWidth"

    invoke-virtual {p0, v5, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    .line 275
    const-string/jumbo v5, "borderBottomWidth"

    invoke-virtual {p0, v5, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method private applyEvents()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXEvent;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 295
    .local v0, "event":Lcom/taobao/weex/dom/WXEvent;
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v2

    .line 296
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 297
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 300
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 301
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->setActiveTouchListener()V

    goto :goto_0
.end method

.method private createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/ui/animation/WXAnimationBean;
    .locals 12
    .param p1, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/ui/animation/WXAnimationBean;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p2, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 2222
    if-eqz p2, :cond_0

    .line 2224
    :try_start_0
    const-string/jumbo v1, "transform"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2225
    .local v10, "transform":Ljava/lang/Object;
    instance-of v1, v10, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2226
    const-string/jumbo v1, "transformOrigin"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2227
    .local v2, "transformOrigin":Ljava/lang/String;
    new-instance v8, Lcom/taobao/weex/ui/animation/WXAnimationBean;

    invoke-direct {v8}, Lcom/taobao/weex/ui/animation/WXAnimationBean;-><init>()V

    .line 2228
    .local v8, "animationBean":Lcom/taobao/weex/ui/animation/WXAnimationBean;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v1

    float-to-int v4, v1

    .line 2229
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v1

    float-to-int v5, v1

    .line 2230
    .local v5, "height":I
    new-instance v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    invoke-direct {v1}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;-><init>()V

    iput-object v1, v8, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    .line 2231
    iget-object v1, v8, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/WXSDKManager;->getInstanceViewPortWidth(Ljava/lang/String;)I

    move-result v6

    .line 2232
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    .line 2231
    invoke-virtual/range {v1 .. v7}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->init(Ljava/lang/String;Ljava/lang/String;IIILcom/taobao/weex/WXSDKInstance;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2240
    .end local v2    # "transformOrigin":Ljava/lang/String;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v8    # "animationBean":Lcom/taobao/weex/ui/animation/WXAnimationBean;
    .end local v10    # "transform":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 2235
    :catch_0
    move-exception v9

    .line 2236
    .local v9, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, ""

    invoke-static {v1, v9}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v11

    .line 2237
    goto :goto_0

    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_0
    move-object v8, v11

    .line 2240
    goto :goto_0
.end method

.method private final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/taobao/weex/bridge/EventResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 536
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_2

    .line 537
    const/4 v5, 0x0

    .line 538
    .local v5, "eventArgsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Lfk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Lfk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "eventArgsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    check-cast v5, Ljava/util/List;

    .line 541
    .restart local v5    # "eventArgsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 542
    invoke-static {p0}, Lcom/taobao/weex/ui/component/binding/Statements;->getComponentId(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, "componentId":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 544
    const-string/jumbo v0, "componentId"

    invoke-interface {p2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .end local v7    # "componentId":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    .line 549
    .end local v5    # "eventArgsValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method

.method private needGestureDetector(Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1275
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1276
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 1277
    .local v0, "gesture":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1290
    .end local v0    # "gesture":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    :cond_0
    :goto_1
    return v1

    .line 1276
    .restart local v0    # "gesture":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1281
    .end local v0    # "gesture":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    :cond_2
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v0, v4, v3

    .line 1282
    .restart local v0    # "gesture":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1281
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1287
    .end local v0    # "gesture":Lcom/taobao/weex/ui/view/gesture/WXGestureType;
    :cond_3
    invoke-static {p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isStopPropagation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1290
    goto :goto_1
.end method

.method private parseAnimation()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2205
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v3, :cond_0

    .line 2218
    :goto_0
    return-void

    .line 2208
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2209
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2210
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/ui/component/WXComponent;->createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/ui/animation/WXAnimationBean;

    move-result-object v1

    .line 2211
    .local v1, "animationBean":Lcom/taobao/weex/ui/animation/WXAnimationBean;
    if-eqz v1, :cond_1

    .line 2212
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;)V

    .line 2213
    .local v0, "action":Lcom/taobao/weex/ui/action/GraphicActionAnimation;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->executeAction()V

    goto :goto_1

    .line 2217
    .end local v0    # "action":Lcom/taobao/weex/ui/action/GraphicActionAnimation;
    .end local v1    # "animationBean":Lcom/taobao/weex/ui/animation/WXAnimationBean;
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0
.end method

.method private prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v7, 0x0

    .line 1552
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1553
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v4

    .line 1555
    .local v4, "resetStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v8, "backgroundColor"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1556
    .local v1, "bgColor":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1557
    .local v2, "colorInt":I
    if-eqz v1, :cond_1

    .line 1558
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v2

    .line 1559
    if-nez v2, :cond_1

    .line 1588
    .end local v1    # "bgColor":Ljava/lang/Object;
    .end local v2    # "colorInt":I
    .end local v4    # "resetStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v7

    .line 1564
    .restart local v1    # "bgColor":Ljava/lang/Object;
    .restart local v2    # "colorInt":I
    .restart local v4    # "resetStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-string/jumbo v8, "backgroundColor:active"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1565
    .local v0, "bg":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v5

    .line 1569
    .local v5, "rippleColor":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_0

    .line 1570
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v8, 0x1

    new-array v8, v8, [[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v5, v9, v10

    invoke-direct {v3, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1573
    .local v3, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v8, Lcom/taobao/weex/ui/component/WXComponent$6;

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v10, 0x0

    invoke-direct {v8, p0, v3, v9, v10}, Lcom/taobao/weex/ui/component/WXComponent$6;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 1585
    .end local v0    # "bg":Ljava/lang/Object;
    .end local v1    # "bgColor":Ljava/lang/Object;
    .end local v2    # "colorInt":I
    .end local v3    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v4    # "resetStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "rippleColor":I
    :catch_0
    move-exception v6

    .line 1586
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "Exception on create ripple: "

    invoke-static {v8, v6}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setActiveTouchListener()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1958
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/dom/WXStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, ":active"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1960
    .local v0, "hasActivePesudo":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1961
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isConsumeTouch()Z

    move-result v1

    .line 1962
    .local v1, "hasTouchConsumer":Z
    new-instance v4, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v4, p0, v3}, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;-><init>(Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;Z)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1964
    .end local v1    # "hasTouchConsumer":Z
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 1962
    .restart local v1    # "hasTouchConsumer":Z
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V
    .locals 11
    .param p1, "realWidth"    # I
    .param p2, "realHeight"    # I
    .param p3, "realLeft"    # I
    .param p4, "realTop"    # I
    .param p5, "realRight"    # I
    .param p6, "realBottom"    # I
    .param p7, "rawOffset"    # Landroid/graphics/Point;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 963
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v2

    .line 970
    .local v2, "UIImp":Lcom/taobao/weex/ui/flat/FlatGUIContext;
    if-eqz v2, :cond_3

    invoke-virtual {v2, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 971
    instance-of v0, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    .line 972
    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v1

    .local v1, "widget":Lcom/taobao/weex/ui/flat/widget/Widget;
    :goto_1
    move-object v0, p0

    move-object/from16 v3, p7

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p5

    move v8, p4

    move/from16 v9, p6

    .line 976
    invoke-direct/range {v0 .. v9}, Lcom/taobao/weex/ui/component/WXComponent;->setWidgetParams(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/flat/FlatGUIContext;Landroid/graphics/Point;IIIIII)V

    goto :goto_0

    .line 974
    .end local v1    # "widget":Lcom/taobao/weex/ui/flat/widget/Widget;
    :cond_2
    invoke-virtual {v2, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v1

    .restart local v1    # "widget":Lcom/taobao/weex/ui/flat/widget/Widget;
    goto :goto_1

    .line 978
    .end local v1    # "widget":Lcom/taobao/weex/ui/flat/widget/Widget;
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 981
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 982
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p5

    move v9, p4

    move/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 987
    :goto_2
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 988
    iput p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 989
    iput p3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 990
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 991
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onFinishLayout()V

    .line 993
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->updateBoxShadow()V

    goto :goto_0

    .line 985
    :cond_4
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p5

    move v9, p4

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    goto :goto_2
.end method

.method private setFixedHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 4
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "host":Landroid/view/View;, "TT;"
    const/4 v1, -0x2

    .line 1055
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1057
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1058
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1059
    invoke-virtual {v0, p4, p6, p5, p7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1060
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKInstance;->moveFixedView(Landroid/view/View;)V

    .line 1063
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    const-string/jumbo v1, "Weex_Fixed_Style"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WXComponent:setLayout :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v1, "Weex_Fixed_Style"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WXComponent:setLayout Left:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/dom/WXStyle;->getLeft()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/dom/WXStyle;->getTop()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :cond_0
    return-void
.end method

.method private setFixedSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "fixedSize"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1236
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v1, "m"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1237
    const/4 v1, -0x1

    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    .line 1244
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1245
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1246
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 1247
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1248
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1249
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1252
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    return-void

    .line 1238
    :cond_1
    const-string/jumbo v1, "w"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1239
    const/4 v1, -0x2

    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    goto :goto_0

    .line 1241
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    goto :goto_1
.end method

.method private setWidgetParams(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/flat/FlatGUIContext;Landroid/graphics/Point;IIIIII)V
    .locals 14
    .param p1, "widget"    # Lcom/taobao/weex/ui/flat/widget/Widget;
    .param p2, "UIImp"    # Lcom/taobao/weex/ui/flat/FlatGUIContext;
    .param p3, "rawoffset"    # Landroid/graphics/Point;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "left"    # I
    .param p7, "right"    # I
    .param p8, "top"    # I
    .param p9, "bottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 999
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 1000
    .local v11, "childOffset":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v2, :cond_1

    .line 1001
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    instance-of v2, v2, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1002
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1003
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1004
    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 1010
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    instance-of v2, v2, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1011
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1012
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1013
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    check-cast v2, Lcom/taobao/weex/ui/flat/FlatComponent;

    invoke-interface {v2}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/ui/flat/widget/Widget;->getLocInFlatContainer()Landroid/graphics/Point;

    move-result-object v13

    .line 1014
    .local v13, "parentLayoutOffset":Landroid/graphics/Point;
    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 1016
    .end local v13    # "parentLayoutOffset":Landroid/graphics/Point;
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v3, p0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    .line 1017
    invoke-virtual/range {v2 .. v10}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 1018
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_1

    .line 1019
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 p4, v0

    .line 1020
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 p5, v0

    move-object v2, v12

    .line 1021
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 p6, v0

    move-object v2, v12

    .line 1022
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 p7, v0

    move-object v2, v12

    .line 1023
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p8, v0

    .line 1024
    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 p9, v0

    :cond_1
    move-object v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object v9, v11

    .line 1027
    invoke-interface/range {v2 .. v9}, Lcom/taobao/weex/ui/flat/widget/Widget;->setLayout(IIIIIILandroid/graphics/Point;)V

    .line 1029
    instance-of v2, p1, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1031
    check-cast p1, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    .end local p1    # "widget":Lcom/taobao/weex/ui/flat/widget/Widget;
    invoke-virtual {p1}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->getView()Landroid/view/View;

    move-result-object v3

    iget v6, v11, Landroid/graphics/Point;->x:I

    iget v8, v11, Landroid/graphics/Point;->y:I

    move-object v2, p0

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move/from16 v9, p9

    invoke-virtual/range {v2 .. v9}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 1034
    :cond_2
    return-void

    .line 1007
    .restart local p1    # "widget":Lcom/taobao/weex/ui/flat/widget/Widget;
    :cond_3
    move/from16 v0, p6

    move/from16 v1, p8

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0
.end method

.method private updateElevation()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1728
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->getElevation(I)F

    move-result v0

    .line 1729
    .local v0, "elevation":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1730
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->e(Landroid/view/View;F)V

    .line 1732
    :cond_0
    return-void
.end method

.method private updateStyleByPesudo(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 2014
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Z)V

    .line 2015
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->executeActionOnRender()V

    .line 2016
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_1

    .line 2018
    :cond_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2019
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2022
    :cond_1
    return-void
.end method


# virtual methods
.method public addAnimationForElement(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2196
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "animMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2197
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 2198
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2200
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 2202
    :cond_1
    return-void
.end method

.method protected final addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 598
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 599
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    .line 601
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$4;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 312
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-nez v3, :cond_0

    .line 313
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    .line 315
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v2

    .line 320
    .local v2, "view":Landroid/view/View;
    const-string/jumbo v3, "layeroverflow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->addLayerOverFlowListener(Ljava/lang/String;)V

    .line 323
    :cond_3
    const-string/jumbo v3, "click"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 324
    if-eqz v2, :cond_1

    .line 328
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    if-nez v3, :cond_4

    .line 329
    new-instance v3, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    .line 331
    :cond_4
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    .line 374
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    .restart local v2    # "view":Landroid/view/View;
    :cond_6
    const-string/jumbo v3, "focus"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "blur"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 333
    :cond_7
    new-instance v3, Lcom/taobao/weex/ui/component/WXComponent$1;

    invoke-direct {v3, p0}, Lcom/taobao/weex/ui/component/WXComponent$1;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    goto :goto_1

    .line 341
    :cond_8
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->needGestureDetector(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 342
    if-eqz v2, :cond_1

    .line 346
    instance-of v3, v2, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-eqz v3, :cond_b

    .line 347
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-nez v3, :cond_9

    .line 348
    new-instance v3, Lcom/taobao/weex/ui/view/gesture/WXGesture;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/taobao/weex/ui/view/gesture/WXGesture;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 349
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    const-string/jumbo v4, "preventMoveEvent"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 350
    .local v0, "isPreventMove":Z
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v3, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setPreventMoveEvent(Z)V

    .line 352
    .end local v0    # "isPreventMove":Z
    :cond_9
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-nez v3, :cond_a

    .line 353
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    .line 355
    :cond_a
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    check-cast v2, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-interface {v2, v3}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    goto :goto_1

    .line 358
    .restart local v2    # "view":Landroid/view/View;
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " don\'t implement WXGestureObservable, so no gesture is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 362
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v1

    .line 363
    .local v1, "scroller":Lcom/taobao/weex/ui/component/Scrollable;
    if-eqz v1, :cond_1

    .line 367
    const-string/jumbo v3, "appear"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 368
    invoke-interface {v1, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto/16 :goto_1

    .line 369
    :cond_d
    const-string/jumbo v3, "disappear"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 370
    invoke-interface {v1, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto/16 :goto_1
.end method

.method protected final addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V
    .locals 2
    .param p1, "l"    # Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 577
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 578
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    .line 580
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 581
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$3;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 2315
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2316
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->addLayerOverFlowListener(Ljava/lang/String;)V

    .line 2317
    :cond_0
    return-void
.end method

.method protected appendEventToDOM(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1261
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 638
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    if-nez p1, :cond_0

    .line 640
    move-object p1, p0

    .line 642
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 643
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 644
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 645
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyEvents()V

    .line 647
    :cond_1
    return-void
.end method

.method public applyLayoutOnly()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 661
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    invoke-virtual {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 663
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 665
    :cond_0
    return-void
.end method

.method protected final bindComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 221
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->bindComponent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 222
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setViewPortWidth(I)V

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 226
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getType()I

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    .line 227
    return-void
.end method

.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 626
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 627
    if-nez p1, :cond_0

    .line 628
    move-object p1, p0

    .line 630
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 631
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 632
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateAttrs(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 633
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getExtra()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateExtra(Ljava/lang/Object;)V

    .line 635
    :cond_1
    return-void
.end method

.method public bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/taobao/weex/ui/IFComponentHolder;

    .prologue
    .line 382
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    .line 383
    return-void
.end method

.method public canRecycled()Z
    .locals 1

    .prologue
    .line 2029
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->canRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected clearBoxShadow()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1138
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {}, Lcom/taobao/weex/utils/BoxShadowUtil;->isBoxShadowEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1144
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    const-string/jumbo v4, "boxShadow"

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1145
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1150
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    .line 1151
    .local v2, "target":Landroid/view/View;
    instance-of v3, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_3

    move-object v3, p0

    .line 1152
    check-cast v3, Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/component/WXVContainer;->getBoxShadowHost(Z)Landroid/view/View;

    move-result-object v2

    .line 1155
    :cond_3
    if-eqz v2, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_4

    .line 1156
    invoke-virtual {v2}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    .line 1157
    .local v1, "overlay":Landroid/view/ViewOverlay;
    if-eqz v1, :cond_4

    .line 1158
    invoke-virtual {v1}, Landroid/view/ViewOverlay;->clear()V

    .line 1161
    .end local v1    # "overlay":Landroid/view/ViewOverlay;
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLastBoxShadowId:Ljava/lang/String;

    goto :goto_0
.end method

.method public clearPreLayout()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    .line 1844
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 1845
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 1846
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 1847
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 1848
    return-void
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "pointF"    # Landroid/graphics/PointF;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1860
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    .line 1861
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 1862
    return-void
.end method

.method public containsEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 1869
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z
    .locals 2
    .param p1, "WXGestureType"    # Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1865
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "originalValue"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v1, 0x0

    .line 1932
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1954
    .end local p2    # "originalValue":Ljava/lang/Object;
    :goto_1
    return-object p2

    .line 1932
    .restart local p2    # "originalValue":Ljava/lang/Object;
    :sswitch_0
    const-string/jumbo v2, "backgroundColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "borderRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "borderBottomLeftRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "borderBottomRightRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "borderTopLeftRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "borderTopRightRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "borderWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "borderTopWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v2, "borderLeftWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v2, "borderRightWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v2, "borderBottomWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "borderColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "borderTopColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v2, "borderLeftColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v2, "borderRightColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v2, "borderBottomColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    .line 1934
    :pswitch_0
    const-string/jumbo p2, "transparent"

    goto/16 :goto_1

    .line 1940
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 1946
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto/16 :goto_1

    .line 1952
    :pswitch_3
    const-string/jumbo p2, "black"

    goto/16 :goto_1

    .line 1932
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_e
        -0x757f89aa -> :sswitch_9
        -0x57ab08a6 -> :sswitch_c
        -0x56940a43 -> :sswitch_7
        -0x4e0397d4 -> :sswitch_f
        -0x4cec9971 -> :sswitch_a
        -0x4932ce1e -> :sswitch_4
        -0xe70d730 -> :sswitch_d
        -0xd59d8cd -> :sswitch_8
        0x13dfc885 -> :sswitch_5
        0x22a57450 -> :sswitch_2
        0x230fd3d7 -> :sswitch_3
        0x2b158697 -> :sswitch_b
        0x2c2c84fa -> :sswitch_6
        0x4cb7f6d5 -> :sswitch_0
        0x506afbde -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final createView()V
    .locals 1

    .prologue
    .line 1335
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    .line 1338
    :cond_0
    return-void
.end method

.method protected createViewImpl()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1341
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 1342
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    .line 1343
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->initView()V

    .line 1347
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1348
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 1350
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    .local v0, "observer":Lcom/taobao/weex/ComponentObserver;
    if-eqz v0, :cond_1

    .line 1351
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ComponentObserver;->onViewCreated(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;)V

    .line 1354
    .end local v0    # "observer":Lcom/taobao/weex/ComponentObserver;
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    .line 1358
    :goto_0
    return-void

    .line 1356
    :cond_2
    const-string/jumbo v1, "createViewImpl"

    const-string/jumbo v2, "Context is null"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v4, 0x0

    .line 1794
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    .local v0, "observer":Lcom/taobao/weex/ComponentObserver;
    if-eqz v0, :cond_0

    .line 1795
    invoke-interface {v0, p0}, Lcom/taobao/weex/ComponentObserver;->onPreDestory(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1798
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1799
    new-instance v2, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v3, "[WXComponent] destroy can only be called in main thread"

    invoke-direct {v2, v3}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1801
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1802
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1804
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->removeAllEvent()V

    .line 1805
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->removeStickyStyle()V

    .line 1808
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1809
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/weex/WXSDKInstance;->removeFixedView(Landroid/view/View;)V

    .line 1812
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    if-eqz v2, :cond_4

    .line 1813
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    invoke-virtual {v2}, Lcom/taobao/weex/layout/ContentBoxMeasurement;->destroy()V

    .line 1814
    iput-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    .line 1816
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    .line 1817
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_5

    .line 1818
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 1820
    :cond_5
    return-void
.end method

.method public detachViewAndClearPreInfo()Landroid/view/View;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v1, 0x0

    .line 1834
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    .line 1835
    .local v0, "original":Landroid/view/View;
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 1836
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 1837
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 1838
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 1840
    return-object v0
.end method

.method protected final findComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 401
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 402
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 404
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTypeParent(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "type"    # Ljava/lang/Class;

    .prologue
    .line 555
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 561
    .end local p1    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :goto_0
    return-object p1

    .line 558
    .restart local p1    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 559
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->findTypeParent(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/Class;)Ljava/lang/Object;

    .line 561
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final fireEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 498
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 499
    return-void
.end method

.method public final fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 502
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string/jumbo v1, "fireEventSyn"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-direct {p0, p1, p2, v2, v2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    goto :goto_0
.end method

.method protected final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    .line 532
    return-void
.end method

.method public final fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/bridge/EventResult;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 510
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 511
    .local v2, "waitLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$2;

    invoke-direct {v0, p0, v2}, Lcom/taobao/weex/ui/component/WXComponent$2;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/concurrent/CountDownLatch;)V

    .line 519
    .local v0, "callback":Lcom/taobao/weex/bridge/EventResult;
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    .line 520
    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_0
    :goto_0
    return-object v0

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    const-string/jumbo v3, "fireEventWait"

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAbsoluteX()I
    .locals 1

    .prologue
    .line 1418
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    return v0
.end method

.method public getAbsoluteY()I
    .locals 1

    .prologue
    .line 1414
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    return v0
.end method

.method public getAttrByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 410
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v0, "default"

    return-object v0
.end method

.method public getComponentSize()Landroid/graphics/Rect;
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 446
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 447
    .local v4, "size":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 448
    new-array v3, v10, [I

    .line 449
    .local v3, "location":[I
    new-array v0, v10, [I

    .line 450
    .local v0, "anchor":[I
    iget-object v7, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 451
    iget-object v7, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 453
    aget v7, v3, v8

    aget v8, v0, v8

    sub-int v2, v7, v8

    .line 454
    .local v2, "left":I
    aget v7, v3, v9

    iget v8, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    sub-int/2addr v7, v8

    aget v8, v0, v9

    sub-int v5, v7, v8

    .line 455
    .local v5, "top":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v7

    float-to-int v6, v7

    .line 456
    .local v6, "width":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v7

    float-to-int v1, v7

    .line 457
    .local v1, "height":I
    add-int v7, v2, v6

    add-int v8, v5, v1

    invoke-virtual {v4, v2, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 459
    .end local v0    # "anchor":[I
    .end local v1    # "height":I
    .end local v2    # "left":I
    .end local v3    # "location":[I
    .end local v5    # "top":I
    .end local v6    # "width":I
    :cond_0
    return-object v4
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 391
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1321
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    instance-of v0, p0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v0, :cond_0

    .line 1322
    check-cast p0, Lcom/taobao/weex/ui/component/Scrollable;

    .line 1324
    .end local p0    # "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getHostView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1400
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 1

    .prologue
    .line 387
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutTopOffsetForSibling()I
    .locals 1

    .prologue
    .line 1037
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 864
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-direct {v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 866
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 868
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 877
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object v0

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getParent()Lcom/taobao/weex/ui/component/WXVContainer;
    .locals 1

    .prologue
    .line 1328
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    return-object v0
.end method

.method public getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v2, 0x0

    .line 1297
    move-object v0, p0

    .line 1301
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    :goto_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    .line 1302
    .local v1, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    if-nez v1, :cond_1

    .line 1310
    :cond_0
    :goto_1
    return-object v2

    .line 1305
    :cond_1
    instance-of v3, v1, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 1306
    check-cast v2, Lcom/taobao/weex/ui/component/Scrollable;

    .line 1307
    .local v2, "scroller":Lcom/taobao/weex/ui/component/Scrollable;
    goto :goto_1

    .line 1309
    .end local v2    # "scroller":Lcom/taobao/weex/ui/component/Scrollable;
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "_root"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1312
    move-object v0, v1

    goto :goto_0
.end method

.method public getRealView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1264
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getRenderObjectPtr()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2254
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->isRenderPtrEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeGetRenderObject(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/ui/action/BasicComponentData;->setRenderObjectPr(J)V

    .line 2257
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getRenderObjectPr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStickyOffset()I
    .locals 1

    .prologue
    .line 2025
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    return v0
.end method

.method public getTransition()Lcom/taobao/weex/dom/transition/WXTransition;
    .locals 1

    .prologue
    .line 2188
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1912
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1410
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getViewTreeKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2175
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2176
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2177
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    .line 2182
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    return-object v0

    .line 2179
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1707
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1709
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "visible"

    goto :goto_0
.end method

.method public hasScrollParent(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 1916
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1917
    const/4 v0, 0x1

    .line 1921
    :goto_0
    return v0

    .line 1918
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXScroller;

    if-eqz v0, :cond_1

    .line 1919
    const/4 v0, 0x0

    goto :goto_0

    .line 1921
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->hasScrollParent(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    goto :goto_0
.end method

.method public initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1380
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1365
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    .line 1367
    :cond_0
    return-void
.end method

.method public final invoke(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 463
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v2, p1}, Lcom/taobao/weex/ui/IFComponentHolder;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v1

    .line 464
    .local v1, "invoker":Lcom/taobao/weex/bridge/Invoker;
    if-eqz v1, :cond_0

    .line 466
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object v2

    .line 468
    invoke-virtual {v2, p0, v1, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[WXComponent] updateProperties :class:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_0
.end method

.method protected isConsumeTouch()Z
    .locals 1

    .prologue
    .line 1967
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestoryed()Z
    .locals 1

    .prologue
    .line 1823
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 1517
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 1505
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->isFixed()Z

    move-result v0

    return v0
.end method

.method public isFlatUIEnabled()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 421
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->isFlatUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayerTypeEnabled()Z
    .locals 1

    .prologue
    .line 2047
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isLayerTypeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLazy()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x1

    .line 569
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-eqz v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRippleEnabled()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v1, 0x0

    .line 2119
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    const-string/jumbo v3, "rippleEnabled"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2120
    .local v0, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2124
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isSticky()Z
    .locals 1

    .prologue
    .line 1501
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->isSticky()Z

    move-result v0

    return v0
.end method

.method public isUsing()Z
    .locals 1

    .prologue
    .line 1881
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    return v0
.end method

.method public isVirtualComponent()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x1

    .line 1905
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaste()Z
    .locals 1

    .prologue
    .line 2128
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    return v0
.end method

.method public lazy(Z)V
    .locals 0
    .param p1, "lazy"    # Z

    .prologue
    .line 2250
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    .line 2251
    return-void
.end method

.method public measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1179
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 1181
    .local v0, "measureOutput":Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    if-eqz v1, :cond_0

    .line 1182
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 1183
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    .line 1188
    :goto_0
    return-object v0

    .line 1185
    :cond_0
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 1186
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    goto :goto_0
.end method

.method public nativeUpdateAttrs(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2273
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2277
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2278
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2280
    .local v2, "objectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2283
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeAttr(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2285
    .end local v2    # "objectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wxEventType"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1873
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v1, "appear"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "disappear"

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1874
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1875
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "direction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1878
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public notifyNativeSizeChanged(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2061
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    if-nez v1, :cond_0

    .line 2068
    :goto_0
    return-void

    .line 2065
    :cond_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    .line 2066
    .local v0, "manager":Lcom/taobao/weex/bridge/WXBridgeManager;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2067
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public onActivityBack()Z
    .locals 1

    .prologue
    .line 1768
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .locals 0

    .prologue
    .line 1745
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityDestroy()V
    .locals 0

    .prologue
    .line 1765
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    .prologue
    .line 1753
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1773
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityResume()V
    .locals 0

    .prologue
    .line 1757
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityStart()V
    .locals 0

    .prologue
    .line 1749
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onActivityStop()V
    .locals 0

    .prologue
    .line 1761
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method protected onCreate()V
    .locals 0

    .prologue
    .line 379
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1776
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishLayout()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1169
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    const-string/jumbo v2, "backgroundImage"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1170
    .local v0, "param":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundImage(Ljava/lang/String;)V

    .line 1173
    :cond_0
    return-void

    .line 1169
    .end local v0    # "param":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHostViewInitialized(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1392
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "host":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1, p0}, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->execute(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1396
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->setActiveTouchListener()V

    .line 1397
    return-void
.end method

.method protected onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 487
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public onRenderFinish(I)V
    .locals 8
    .param p1, "state"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v7, 0x2

    .line 2081
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2082
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v4, v4, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadNanos:J

    invoke-static {v4, v5}, Lcom/taobao/weex/tracing/Stopwatch;->nanosToMillis(J)D

    move-result-wide v2

    .line 2083
    .local v2, "uiTime":D
    if-eq p1, v7, :cond_0

    if-nez p1, :cond_2

    .line 2084
    :cond_0
    const-string/jumbo v4, "DomExecute"

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget v6, v6, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->rootEventId:I

    invoke-static {v4, v5, v6}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v0

    .line 2085
    .local v0, "domEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    const-string/jumbo v4, "X"

    iput-object v4, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 2086
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v4, v4, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->domThreadStart:J

    iput-wide v4, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 2087
    const-string/jumbo v4, "DOMThread"

    iput-object v4, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 2088
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    .line 2089
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    .line 2090
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2091
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    .line 2093
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 2096
    .end local v0    # "domEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    :cond_2
    if-eq p1, v7, :cond_3

    const/4 v4, 0x1

    if-ne p1, v4, :cond_5

    .line 2097
    :cond_3
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v4, v4, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    .line 2098
    const-string/jumbo v4, "UIExecute"

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget v6, v6, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->rootEventId:I

    invoke-static {v4, v5, v6}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v1

    .line 2099
    .local v1, "uiEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    const-string/jumbo v4, "X"

    iput-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 2100
    iput-wide v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    .line 2101
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v4, v4, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    iput-wide v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 2102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    .line 2103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    .line 2104
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2105
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    .line 2107
    :cond_4
    invoke-virtual {v1}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 2115
    .end local v1    # "uiEvent":Lcom/taobao/weex/tracing/WXTracing$TraceEvent;
    .end local v2    # "uiTime":D
    :cond_5
    :goto_0
    return-void

    .line 2109
    .restart local v2    # "uiTime":D
    :cond_6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 1781
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public postAnimation(Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;)V
    .locals 0
    .param p1, "holder"    # Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;

    .prologue
    .line 415
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;

    .line 416
    return-void
.end method

.method public readyToRender()V
    .locals 1

    .prologue
    .line 1889
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isTrackComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->readyToRender()V

    .line 1892
    :cond_0
    return-void
.end method

.method public recycled()V
    .locals 1

    .prologue
    .line 1787
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1790
    :goto_0
    return-void

    .line 1789
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    goto :goto_0
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 670
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public registerActivityStateListener()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1737
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method public removeAllEvent()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v5, 0x0

    .line 1456
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1459
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    .line 1460
    .local v1, "events":Lcom/taobao/weex/dom/WXEvent;
    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v3

    .line 1461
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1462
    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1465
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1466
    .local v0, "event":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1469
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    .line 1461
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1471
    .end local v0    # "event":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v4, :cond_4

    .line 1472
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1474
    :cond_4
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v4, :cond_5

    .line 1475
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1477
    :cond_5
    iput-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 1478
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1479
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-eqz v4, :cond_6

    .line 1480
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    invoke-interface {v4, v5}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    .line 1482
    :cond_6
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1483
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1484
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1485
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1486
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected final removeClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;

    .prologue
    .line 622
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 623
    return-void
.end method

.method public removeEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1422
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1425
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1429
    const-string/jumbo v0, "layeroverflow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->removeLayerOverFlowListener(Ljava/lang/String;)V

    .line 1432
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->remove(Ljava/lang/String;)Z

    .line 1433
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1434
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1435
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1439
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v1, "click"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    if-nez v1, :cond_0

    .line 1441
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    .line 1443
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1446
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    .line 1447
    .local v0, "scroller":Lcom/taobao/weex/ui/component/Scrollable;
    const-string/jumbo v1, "appear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1448
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1450
    :cond_2
    const-string/jumbo v1, "disappear"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1451
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1453
    :cond_3
    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 2320
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2321
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeLayerOverFlowListener(Ljava/lang/String;)V

    .line 2322
    :cond_0
    return-void
.end method

.method public final removeStickyStyle()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1492
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    .line 1494
    .local v0, "scroller":Lcom/taobao/weex/ui/component/Scrollable;
    if-eqz v0, :cond_0

    .line 1495
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1498
    .end local v0    # "scroller":Lcom/taobao/weex/ui/component/Scrollable;
    :cond_0
    return-void
.end method

.method public removeVirtualComponent()V
    .locals 0

    .prologue
    .line 1909
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    return-void
.end method

.method protected setAriaHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1193
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 1194
    .local v0, "host":Landroid/view/View;
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1195
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1197
    :cond_0
    return-void

    .line 1195
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setAriaLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 1200
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 1201
    .local v0, "host":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1204
    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 5
    .param p1, "color"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1530
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1531
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 1532
    .local v0, "colorInt":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isRippleEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 1533
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    .line 1534
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 1535
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-nez v2, :cond_1

    .line 1536
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1548
    .end local v0    # "colorInt":I
    :cond_0
    :goto_0
    return-void

    .line 1538
    .restart local v0    # "colorInt":I
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1539
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1544
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v2, :cond_0

    .line 1545
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setColor(I)V

    goto :goto_0
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgImage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1592
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setImage(Landroid/graphics/Shader;)V

    .line 1598
    :goto_0
    return-void

    .line 1595
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/taobao/weex/utils/WXResourceUtils;->getShader(Ljava/lang/String;FF)Landroid/graphics/Shader;

    move-result-object v0

    .line 1596
    .local v0, "shader":Landroid/graphics/Shader;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setImage(Landroid/graphics/Shader;)V

    goto :goto_0
.end method

.method public setBorderColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "borderColor"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1679
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1680
    invoke-static {p2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 1681
    .local v0, "colorInt":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1682
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1701
    .end local v0    # "colorInt":I
    :cond_1
    :goto_1
    return-void

    .line 1682
    .restart local v0    # "colorInt":I
    :sswitch_0
    const-string/jumbo v2, "borderColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "borderTopColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "borderRightColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "borderBottomColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "borderLeftColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 1684
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 1687
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 1690
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 1693
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 1696
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 1682
    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_2
        -0x57ab08a6 -> :sswitch_1
        -0x4e0397d4 -> :sswitch_3
        -0xe70d730 -> :sswitch_4
        0x2b158697 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBorderRadius(Ljava/lang/String;F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "borderRadius"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1610
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 1611
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1630
    :cond_1
    :goto_1
    return-void

    .line 1611
    :sswitch_0
    const-string/jumbo v1, "borderRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "borderTopLeftRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "borderTopRightRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "borderBottomRightRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "borderBottomLeftRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1613
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 1614
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v2

    .line 1613
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_1

    .line 1617
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_1

    .line 1620
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto/16 :goto_1

    .line 1623
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto/16 :goto_1

    .line 1626
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FI)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto/16 :goto_1

    .line 1611
    :sswitch_data_0
    .sparse-switch
        -0x4932ce1e -> :sswitch_1
        0x13dfc885 -> :sswitch_2
        0x22a57450 -> :sswitch_4
        0x230fd3d7 -> :sswitch_3
        0x506afbde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "borderStyle"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1657
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1658
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1676
    :cond_1
    :goto_1
    return-void

    .line 1658
    :sswitch_0
    const-string/jumbo v1, "borderStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "borderRightStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "borderBottomStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "borderLeftStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "borderTopStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1660
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 1663
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 1666
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 1669
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 1672
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 1658
    :sswitch_data_0
    .sparse-switch
        -0x75b299bf -> :sswitch_1
        -0x56c71a58 -> :sswitch_4
        -0x4d1fa986 -> :sswitch_2
        -0xd8ce8e2 -> :sswitch_3
        0x2bf974e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setBorderWidth(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "borderWidth"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1633
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 1634
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1654
    :cond_1
    :goto_1
    return-void

    .line 1634
    :sswitch_0
    const-string/jumbo v1, "borderWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "borderTopWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "borderRightWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "borderBottomWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "borderLeftWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1636
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 1639
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 1642
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 1645
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 1648
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 1634
    nop

    :sswitch_data_0
    .sparse-switch
        -0x757f89aa -> :sswitch_2
        -0x56940a43 -> :sswitch_1
        -0x4cec9971 -> :sswitch_3
        -0xd59d8cd -> :sswitch_4
        0x2c2c84fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V
    .locals 4
    .param p1, "contentBoxMeasurement"    # Lcom/taobao/weex/layout/ContentBoxMeasurement;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    .line 231
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/taobao/weex/WXSDKInstance;->addContentBoxMeasurement(JLcom/taobao/weex/layout/ContentBoxMeasurement;)V

    .line 232
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->bindMeasurementToRenderObject(J)V

    .line 233
    return-void
.end method

.method public setDemission(Lcom/taobao/weex/ui/action/GraphicSize;Lcom/taobao/weex/ui/action/GraphicPosition;)V
    .locals 0
    .param p1, "size"    # Lcom/taobao/weex/ui/action/GraphicSize;
    .param p2, "position"    # Lcom/taobao/weex/ui/action/GraphicPosition;

    .prologue
    .line 650
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 651
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 652
    return-void
.end method

.method public setDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1509
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    .line 1510
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1514
    :goto_0
    return-void

    .line 1513
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 15
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1042
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "host":Landroid/view/View;, "TT;"
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v4, :cond_1

    .line 1043
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1044
    .local v14, "params":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1045
    move-object v13, v14

    .line 1049
    .end local v14    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .local v13, "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    if-eqz v13, :cond_0

    .line 1050
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1052
    :cond_0
    return-void

    .line 1047
    .end local v13    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    move-object v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v4 .. v12}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .restart local v13    # "lp":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0
.end method

.method public final setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 15
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 885
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    if-nez v0, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 892
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 893
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 894
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 895
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 897
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->parseAnimation()V

    .line 899
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v0, :cond_6

    const/4 v9, 0x1

    .line 902
    .local v9, "nullParent":Z
    :goto_1
    if-eqz v9, :cond_7

    const/4 v12, 0x0

    .line 904
    .local v12, "siblingOffset":I
    :goto_2
    if-eqz v9, :cond_8

    new-instance v11, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v11}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    .line 905
    .local v11, "parentPadding":Lcom/taobao/weex/dom/CSSShorthand;
    :goto_3
    if-eqz v9, :cond_9

    new-instance v10, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v10}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    .line 907
    .local v10, "parentBorder":Lcom/taobao/weex/dom/CSSShorthand;
    :goto_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    float-to-int v1, v0

    .line 908
    .local v1, "realWidth":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v0

    float-to-int v2, v0

    .line 913
    .local v2, "realHeight":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 914
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v13

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v0, v13

    float-to-int v3, v0

    .line 915
    .local v3, "realLeft":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v13

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingTop()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v0, v13

    float-to-int v0, v0

    add-int v4, v0, v12

    .line 923
    .local v4, "realTop":I
    :goto_5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v13, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v13}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v0

    float-to-int v5, v0

    .line 924
    .local v5, "realRight":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v13, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v13}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v0

    float-to-int v6, v0

    .line 926
    .local v6, "realBottom":I
    new-instance v7, Landroid/graphics/Point;

    .line 927
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v0

    float-to-int v0, v0

    .line 928
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v13

    invoke-virtual {v13}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v7, v0, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 930
    .local v7, "rawOffset":Landroid/graphics/Point;
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    if-eq v0, v4, :cond_0

    .line 934
    :cond_2
    instance-of v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v0, :cond_3

    sget v0, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_HEIGHT:I

    if-lt v2, v0, :cond_3

    sget v0, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_WIDTH:I

    if-lt v1, v0, :cond_3

    .line 935
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v13, v0, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    .line 938
    :cond_3
    if-eqz v9, :cond_b

    const/4 v0, 0x0

    :goto_6
    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    .line 939
    if-eqz v9, :cond_c

    const/4 v0, 0x0

    :goto_7
    float-to-int v0, v0

    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    .line 941
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    if-eqz v0, :cond_4

    .line 942
    iget-object v13, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    iget-object v14, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v14}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    if-le v0, v14, :cond_d

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v13, p0, v0}, Lcom/taobao/weex/WXSDKInstance;->onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    .line 944
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v0, v0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    add-int/2addr v0, v2

    iget-object v13, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v13}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-le v0, v13, :cond_5

    .line 950
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->firstScreenRenderFinished()V

    .line 951
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 954
    :cond_5
    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object v8

    .line 955
    .local v8, "measureOutput":Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    iget v1, v8, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 956
    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    move-object v0, p0

    .line 958
    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V

    goto/16 :goto_0

    .line 899
    .end local v1    # "realWidth":I
    .end local v2    # "realHeight":I
    .end local v3    # "realLeft":I
    .end local v4    # "realTop":I
    .end local v5    # "realRight":I
    .end local v6    # "realBottom":I
    .end local v7    # "rawOffset":Landroid/graphics/Point;
    .end local v8    # "measureOutput":Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .end local v9    # "nullParent":Z
    .end local v10    # "parentBorder":Lcom/taobao/weex/dom/CSSShorthand;
    .end local v11    # "parentPadding":Lcom/taobao/weex/dom/CSSShorthand;
    .end local v12    # "siblingOffset":I
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 902
    .restart local v9    # "nullParent":Z
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildrenLayoutTopOffset()I

    move-result v12

    goto/16 :goto_2

    .line 904
    .restart local v12    # "siblingOffset":I
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v11

    goto/16 :goto_3

    .line 905
    .restart local v11    # "parentPadding":Lcom/taobao/weex/dom/CSSShorthand;
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v10

    goto/16 :goto_4

    .line 917
    .restart local v1    # "realWidth":I
    .restart local v2    # "realHeight":I
    .restart local v10    # "parentBorder":Lcom/taobao/weex/dom/CSSShorthand;
    :cond_a
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v0

    sget-object v13, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 918
    invoke-virtual {v11, v13}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v13

    sub-float/2addr v0, v13

    sget-object v13, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v10, v13}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v13

    sub-float/2addr v0, v13

    float-to-int v3, v0

    .line 919
    .restart local v3    # "realLeft":I
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v0

    sget-object v13, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 920
    invoke-virtual {v11, v13}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v13

    sub-float/2addr v0, v13

    sget-object v13, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v10, v13}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v13

    sub-float/2addr v0, v13

    float-to-int v0, v0

    add-int v4, v0, v12

    .restart local v4    # "realTop":I
    goto/16 :goto_5

    .line 938
    .restart local v5    # "realRight":I
    .restart local v6    # "realBottom":I
    .restart local v7    # "rawOffset":Landroid/graphics/Point;
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getAbsoluteY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutTop()F

    move-result v13

    add-float/2addr v0, v13

    goto/16 :goto_6

    .line 939
    :cond_c
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getAbsoluteX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutLeft()F

    move-result v13

    add-float/2addr v0, v13

    goto/16 :goto_7

    .line 942
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_8
.end method

.method public setNeedLayoutOnAnimation(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 2054
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    .line 2055
    return-void
.end method

.method public setOpacity(F)V
    .locals 3
    .param p1, "opacity"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1601
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1602
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1605
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1607
    :cond_1
    return-void
.end method

.method public setPadding(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;)V
    .locals 6
    .param p1, "padding"    # Lcom/taobao/weex/dom/CSSShorthand;
    .param p2, "border"    # Lcom/taobao/weex/dom/CSSShorthand;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 279
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 280
    .local v1, "left":I
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 281
    .local v3, "top":I
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 282
    .local v2, "right":I
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 284
    .local v0, "bottom":I
    instance-of v4, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v4, :cond_1

    move-object v4, p0

    check-cast v4, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    check-cast p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    .end local p0    # "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-interface {p0}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v4

    invoke-interface {v4, v1, v3, v2, v0}, Lcom/taobao/weex/ui/flat/widget/Widget;->setContentBox(IIII)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    .restart local p0    # "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 287
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 730
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-nez p1, :cond_0

    .line 731
    const/4 v15, 0x1

    .line 859
    :goto_0
    return v15

    .line 733
    :cond_0
    const/4 v15, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 859
    const/4 v15, 0x0

    goto :goto_0

    .line 733
    :sswitch_0
    const-string/jumbo v16, "preventMoveEvent"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v15, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v16, "disabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v15, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v16, "position"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v15, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v16, "backgroundColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v15, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v16, "backgroundImage"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v15, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v16, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v15, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v16, "borderRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v15, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v16, "borderTopLeftRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v15, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v16, "borderTopRightRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v16, "borderBottomRightRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v16, "borderBottomLeftRadius"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v16, "borderStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v16, "borderRightStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v16, "borderBottomStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v16, "borderLeftStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v16, "borderTopStyle"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v16, "borderColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v16, "borderTopColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v16, "borderRightColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v16, "borderBottomColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v16, "borderLeftColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v16, "visibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v16, "elevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v16, "fixedSize"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v16, "ariaLabel"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v16, "ariaHidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v16, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v16, "minWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v16, "maxWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v16, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v16, "minHeight"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v16, "maxHeight"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v16, "alignItems"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v16, "alignSelf"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v16, "flex"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v16, "flexDirection"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v16, "justifyContent"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v16, "flexWrap"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string/jumbo v16, "margin"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v16, "marginTop"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x27

    goto/16 :goto_1

    :sswitch_28
    const-string/jumbo v16, "marginLeft"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v16, "marginRight"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string/jumbo v16, "marginBottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v16, "padding"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x2b

    goto/16 :goto_1

    :sswitch_2c
    const-string/jumbo v16, "paddingTop"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x2c

    goto/16 :goto_1

    :sswitch_2d
    const-string/jumbo v16, "paddingLeft"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x2d

    goto/16 :goto_1

    :sswitch_2e
    const-string/jumbo v16, "paddingRight"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x2e

    goto/16 :goto_1

    :sswitch_2f
    const-string/jumbo v16, "paddingBottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x2f

    goto/16 :goto_1

    :sswitch_30
    const-string/jumbo v16, "borderWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x30

    goto/16 :goto_1

    :sswitch_31
    const-string/jumbo v16, "borderTopWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x31

    goto/16 :goto_1

    :sswitch_32
    const-string/jumbo v16, "borderRightWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x32

    goto/16 :goto_1

    :sswitch_33
    const-string/jumbo v16, "borderBottomWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x33

    goto/16 :goto_1

    :sswitch_34
    const-string/jumbo v16, "borderLeftWidth"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x34

    goto/16 :goto_1

    :sswitch_35
    const-string/jumbo v16, "left"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x35

    goto/16 :goto_1

    :sswitch_36
    const-string/jumbo v16, "top"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x36

    goto/16 :goto_1

    :sswitch_37
    const-string/jumbo v16, "right"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x37

    goto/16 :goto_1

    :sswitch_38
    const-string/jumbo v16, "bottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x38

    goto/16 :goto_1

    :sswitch_39
    const-string/jumbo v16, "boxShadow"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x39

    goto/16 :goto_1

    :sswitch_3a
    const-string/jumbo v16, "role"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v15, 0x3a

    goto/16 :goto_1

    .line 735
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v15, :cond_2

    .line 736
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setPreventMoveEvent(Z)V

    .line 738
    :cond_2
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 740
    :pswitch_1
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    .line 741
    .local v6, "disabled":Ljava/lang/Boolean;
    if-eqz v6, :cond_3

    .line 742
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/taobao/weex/ui/component/WXComponent;->setDisabled(Z)V

    .line 743
    const-string/jumbo v15, ":disabled"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    .line 745
    :cond_3
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 747
    .end local v6    # "disabled":Ljava/lang/Boolean;
    :pswitch_2
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 748
    .local v11, "position":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 749
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/taobao/weex/ui/component/WXComponent;->setSticky(Ljava/lang/String;)V

    .line 750
    :cond_4
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 752
    .end local v11    # "position":Ljava/lang/String;
    :pswitch_3
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "bgColor":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 754
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundColor(Ljava/lang/String;)V

    .line 755
    :cond_5
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 757
    .end local v2    # "bgColor":Ljava/lang/String;
    :pswitch_4
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "bgImage":Ljava/lang/String;
    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v15, :cond_6

    .line 759
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundImage(Ljava/lang/String;)V

    .line 761
    :cond_6
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 763
    .end local v3    # "bgImage":Ljava/lang/String;
    :pswitch_5
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v10

    .line 764
    .local v10, "opacity":Ljava/lang/Float;
    if-eqz v10, :cond_7

    .line 765
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/taobao/weex/ui/component/WXComponent;->setOpacity(F)V

    .line 766
    :cond_7
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 772
    .end local v10    # "opacity":Ljava/lang/Float;
    :pswitch_6
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v12

    .line 773
    .local v12, "radius":Ljava/lang/Float;
    if-eqz v12, :cond_8

    .line 774
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderRadius(Ljava/lang/String;F)V

    .line 775
    :cond_8
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 781
    .end local v12    # "radius":Ljava/lang/Float;
    :pswitch_7
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 782
    .local v5, "border_style":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 783
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_9
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 790
    .end local v5    # "border_style":Ljava/lang/String;
    :pswitch_8
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 791
    .local v4, "border_color":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 792
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderColor(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 795
    .end local v4    # "border_color":Ljava/lang/String;
    :pswitch_9
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 796
    .local v14, "visibility":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 797
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/weex/ui/component/WXComponent;->setVisibility(Ljava/lang/String;)V

    .line 798
    :cond_b
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 800
    .end local v14    # "visibility":Ljava/lang/String;
    :pswitch_a
    if-eqz p2, :cond_c

    .line 801
    invoke-direct/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->updateElevation()V

    .line 803
    :cond_c
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 805
    :pswitch_b
    const-string/jumbo v15, "m"

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, "fixedSize":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedSize(Ljava/lang/String;)V

    .line 807
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 809
    .end local v7    # "fixedSize":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v15, ""

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 810
    .local v9, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/taobao/weex/ui/component/WXComponent;->setAriaLabel(Ljava/lang/String;)V

    .line 811
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 813
    .end local v9    # "label":Ljava/lang/String;
    :pswitch_d
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 814
    .local v8, "isHidden":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/taobao/weex/ui/component/WXComponent;->setAriaHidden(Z)V

    .line 815
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 847
    .end local v8    # "isHidden":Z
    :pswitch_e
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 850
    :pswitch_f
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->updateBoxShadow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_2
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 851
    :catch_0
    move-exception v13

    .line 852
    .local v13, "t":Ljava/lang/Throwable;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 856
    .end local v13    # "t":Ljava/lang/Throwable;
    :pswitch_10
    const-string/jumbo v15, ""

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/taobao/weex/ui/component/WXComponent;->setRole(Ljava/lang/String;)V

    .line 857
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 733
    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_12
        -0x75b299bf -> :sswitch_c
        -0x757f89aa -> :sswitch_32
        -0x597a2048 -> :sswitch_2d
        -0x57ab08a6 -> :sswitch_11
        -0x56c71a58 -> :sswitch_f
        -0x56940a43 -> :sswitch_31
        -0x527265d5 -> :sswitch_38
        -0x5201456c -> :sswitch_1b
        -0x4e0397d4 -> :sswitch_13
        -0x4d1fa986 -> :sswitch_d
        -0x4cec9971 -> :sswitch_33
        -0x4b8807f5 -> :sswitch_5
        -0x4932ce1e -> :sswitch_7
        -0x48c76ed9 -> :sswitch_1d
        -0x42474fed -> :sswitch_19
        -0x40737a52 -> :sswitch_26
        -0x3f600445 -> :sswitch_20
        -0x3e464339 -> :sswitch_27
        -0x3a1ff07a -> :sswitch_23
        -0x36017855 -> :sswitch_1f
        -0x337b0495 -> :sswitch_18
        -0x300fc3ef -> :sswitch_2b
        -0x113c6e87 -> :sswitch_2a
        -0xe70d730 -> :sswitch_14
        -0xd8ce8e2 -> :sswitch_e
        -0xd59d8cd -> :sswitch_34
        -0x7f661e7 -> :sswitch_1e
        -0x42d1a3 -> :sswitch_16
        0x1c155 -> :sswitch_36
        0x2ffff9 -> :sswitch_22
        0x32a007 -> :sswitch_35
        0x358076 -> :sswitch_3a
        0x55f4784 -> :sswitch_2c
        0x677c21c -> :sswitch_37
        0x6be2dc6 -> :sswitch_1a
        0xc0fb19c -> :sswitch_2f
        0x10263a7c -> :sswitch_1
        0x13dfc885 -> :sswitch_8
        0x17dd56c2 -> :sswitch_1c
        0x22a57450 -> :sswitch_a
        0x230fd3d7 -> :sswitch_9
        0x2a8c788b -> :sswitch_2e
        0x2ac25e51 -> :sswitch_0
        0x2b158697 -> :sswitch_10
        0x2bf974e5 -> :sswitch_b
        0x2c2c84fa -> :sswitch_30
        0x2c4a1ecb -> :sswitch_39
        0x2c8d6195 -> :sswitch_17
        0x2c929929 -> :sswitch_2
        0x3a1ea90e -> :sswitch_29
        0x4cb7f6d5 -> :sswitch_3
        0x4d0b70cd -> :sswitch_4
        0x506afbde -> :sswitch_6
        0x67f69fe3 -> :sswitch_25
        0x6953cff1 -> :sswitch_21
        0x6ee75fc9 -> :sswitch_24
        0x73b66312 -> :sswitch_15
        0x757a12d5 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected setPseudoClassStatus(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "clzName"    # Ljava/lang/String;
    .param p2, "status"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1980
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    .line 1981
    .local v2, "styles":Lcom/taobao/weex/dom/WXStyle;
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v0

    .line 1983
    .local v0, "pesudoStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2011
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    if-nez v3, :cond_2

    .line 1987
    new-instance v3, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    invoke-direct {v3}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    .line 1989
    :cond_2
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    .line 1993
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v4

    .line 1989
    invoke-virtual {v3, p1, p2, v0, v4}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1995
    .local v1, "resultStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_3

    .line 1996
    if-eqz p2, :cond_5

    .line 1997
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 1998
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "width"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1999
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v3

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "width:active"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/action/GraphicSize;->setWidth(F)V

    .line 2010
    :cond_3
    :goto_1
    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyleByPesudo(Ljava/util/Map;)V

    goto :goto_0

    .line 2000
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string/jumbo v4, "height"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2001
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v3

    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "height:active"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/taobao/weex/ui/action/GraphicSize;->setHeight(F)V

    goto :goto_1

    .line 2004
    :cond_5
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz v3, :cond_3

    .line 2005
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    goto :goto_1
.end method

.method protected setRole(Ljava/lang/String;)V
    .locals 6
    .param p1, "roleKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1207
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    .line 1208
    .local v2, "host":Landroid/view/View;
    move-object v3, p1

    .line 1209
    .local v3, "role":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1210
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getAccessibilityRoleAdapter()Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    move-result-object v4

    .line 1211
    .local v4, "roleAdapter":Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;
    if-eqz v4, :cond_0

    .line 1212
    invoke-interface {v4, p1}, Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;->getRole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1214
    :cond_0
    move-object v1, v3

    .line 1215
    .local v1, "finalRole":Ljava/lang/String;
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$5;

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/component/WXComponent$5;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)V

    .line 1226
    .local v0, "delegate":Lfz;
    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Lfz;)V

    .line 1228
    .end local v0    # "delegate":Lfz;
    .end local v1    # "finalRole":Ljava/lang/String;
    .end local v4    # "roleAdapter":Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;
    :cond_1
    return-void
.end method

.method public setSticky(Ljava/lang/String;)V
    .locals 2
    .param p1, "sticky"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1521
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "sticky"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1522
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    .line 1523
    .local v0, "waScroller":Lcom/taobao/weex/ui/component/Scrollable;
    if-eqz v0, :cond_0

    .line 1524
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1527
    .end local v0    # "waScroller":Lcom/taobao/weex/ui/component/Scrollable;
    :cond_0
    return-void
.end method

.method public setStickyOffset(I)V
    .locals 0
    .param p1, "stickyOffset"    # I

    .prologue
    .line 2038
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    .line 2039
    return-void
.end method

.method public setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .locals 0
    .param p1, "transition"    # Lcom/taobao/weex/dom/transition/WXTransition;

    .prologue
    .line 2192
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

    .line 2193
    return-void
.end method

.method public setUsing(Z)V
    .locals 0
    .param p1, "using"    # Z

    .prologue
    .line 1885
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    .line 1886
    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 2
    .param p1, "visibility"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1715
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1716
    const-string/jumbo v1, "visible"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1717
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    const-string/jumbo v1, "hidden"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1719
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWaste(Z)V
    .locals 4
    .param p1, "waste"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const/4 v3, 0x0

    .line 2136
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    if-eq v0, p1, :cond_1

    .line 2137
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    .line 2138
    const-string/jumbo v0, "recycle-list"

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getComponentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2139
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectChildWaste(JZ)V

    .line 2142
    :cond_0
    if-eqz p1, :cond_3

    .line 2144
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    const-string/jumbo v2, "hidden"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2147
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-nez v0, :cond_1

    .line 2148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    .line 2168
    :cond_1
    :goto_0
    return-void

    .line 2151
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2154
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    const-string/jumbo v2, "visible"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2156
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-eqz v0, :cond_1

    .line 2157
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2158
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    goto :goto_0

    .line 2160
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-static {p0, v0}, Lcom/taobao/weex/ui/component/binding/Statements;->initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V

    goto :goto_0

    .line 2164
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateActivePseudo(Z)V
    .locals 1
    .param p1, "isSet"    # Z

    .prologue
    .line 1972
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    const-string/jumbo v0, ":active"

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    .line 1973
    return-void
.end method

.method public updateAttrs(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 250
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 253
    :cond_0
    return-void
.end method

.method public updateAttrs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 259
    :cond_0
    return-void
.end method

.method protected updateBoxShadow()V
    .locals 18

    .prologue
    .line 1070
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-static {}, Lcom/taobao/weex/utils/BoxShadowUtil;->isBoxShadowEnabled()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v15

    const-string/jumbo v16, "boxShadow"

    invoke-virtual/range {v15 .. v16}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1077
    .local v2, "boxShadow":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v15

    const-string/jumbo v16, "shadowQuality"

    invoke-virtual/range {v15 .. v16}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1078
    .local v8, "shadowQuality":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1082
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    .line 1083
    .local v10, "target":Landroid/view/View;
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v15, :cond_2

    move-object/from16 v15, p0

    .line 1084
    check-cast v15, Lcom/taobao/weex/ui/component/WXVContainer;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/taobao/weex/ui/component/WXVContainer;->getBoxShadowHost(Z)Landroid/view/View;

    move-result-object v10

    .line 1087
    :cond_2
    if-eqz v10, :cond_0

    .line 1091
    const/high16 v15, 0x3f000000    # 0.5f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1092
    .local v5, "quality":F
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v15

    invoke-virtual {v15}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v14

    .line 1093
    .local v14, "viewPort":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v16, " / ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1094
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1095
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] / "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 1096
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1098
    .local v12, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/ui/component/WXComponent;->mLastBoxShadowId:Ljava/lang/String;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/ui/component/WXComponent;->mLastBoxShadowId:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1099
    const-string/jumbo v15, "BoxShadow"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "box-shadow style was not modified. "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1103
    :cond_3
    const/16 v15, 0x8

    new-array v6, v15, [F

    fill-array-data v6, :array_0

    .line 1104
    .local v6, "radii":[F
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v9

    .line 1105
    .local v9, "style":Lcom/taobao/weex/dom/WXStyle;
    if-eqz v9, :cond_4

    .line 1106
    const-string/jumbo v15, "borderTopLeftRadius"

    invoke-virtual {v9, v15}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 1107
    .local v11, "tl":F
    const/4 v15, 0x0

    aput v11, v6, v15

    .line 1108
    const/4 v15, 0x1

    aput v11, v6, v15

    .line 1110
    const-string/jumbo v15, "borderTopRightRadius"

    invoke-virtual {v9, v15}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 1111
    .local v13, "tr":F
    const/4 v15, 0x2

    aput v13, v6, v15

    .line 1112
    const/4 v15, 0x3

    aput v13, v6, v15

    .line 1114
    const-string/jumbo v15, "borderBottomRightRadius"

    invoke-virtual {v9, v15}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1115
    .local v3, "br":F
    const/4 v15, 0x4

    aput v3, v6, v15

    .line 1116
    const/4 v15, 0x5

    aput v3, v6, v15

    .line 1118
    const-string/jumbo v15, "borderBottomLeftRadius"

    invoke-virtual {v9, v15}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1119
    .local v1, "bl":F
    const/4 v15, 0x6

    aput v1, v6, v15

    .line 1120
    const/4 v15, 0x7

    aput v1, v6, v15

    .line 1122
    const-string/jumbo v15, "borderRadius"

    invoke-virtual {v9, v15}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1123
    const-string/jumbo v15, "borderRadius"

    invoke-virtual {v9, v15}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 1124
    .local v7, "radius":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v15, 0x8

    if-ge v4, v15, :cond_4

    .line 1125
    aput v7, v6, v4

    .line 1124
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1130
    .end local v1    # "bl":F
    .end local v3    # "br":F
    .end local v4    # "i":I
    .end local v7    # "radius":F
    .end local v11    # "tl":F
    .end local v13    # "tr":F
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v10, v15, v6, v14, v5}, Lcom/taobao/weex/utils/BoxShadowUtil;->setBoxShadow(Landroid/view/View;Ljava/lang/String;[FIF)V

    .line 1131
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/taobao/weex/ui/component/WXComponent;->mLastBoxShadowId:Ljava/lang/String;

    goto/16 :goto_0

    .line 1133
    .end local v2    # "boxShadow":Ljava/lang/Object;
    .end local v5    # "quality":F
    .end local v6    # "radii":[F
    .end local v8    # "shadowQuality":Ljava/lang/Object;
    .end local v9    # "style":Lcom/taobao/weex/dom/WXStyle;
    .end local v10    # "target":Landroid/view/View;
    .end local v12    # "token":Ljava/lang/String;
    .end local v14    # "viewPort":I
    :cond_5
    const-string/jumbo v15, "Can not resolve styles"

    invoke-static {v15}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1103
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public updateDemission(FFFFFF)V
    .locals 1
    .param p1, "top"    # F
    .param p2, "bottom"    # F
    .param p3, "left"    # F
    .param p4, "right"    # F
    .param p5, "height"    # F
    .param p6, "width"    # F

    .prologue
    .line 655
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicPosition;->update(FFFF)V

    .line 656
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    invoke-virtual {v0, p6, p5}, Lcom/taobao/weex/ui/action/GraphicSize;->update(FF)V

    .line 657
    return-void
.end method

.method public updateNativeAttr(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2262
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-nez p1, :cond_0

    .line 2270
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 2265
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    if-nez p2, :cond_1

    .line 2266
    const-string/jumbo p2, ""

    .line 2268
    .end local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeUpdateRenderObjectAttr(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateNativeStyle(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2289
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-nez p1, :cond_0

    .line 2297
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 2292
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    if-nez p2, :cond_1

    .line 2293
    const-string/jumbo p2, ""

    .line 2295
    .end local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeUpdateRenderObjectStyle(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateNativeStyles(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2300
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2304
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2305
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2307
    .local v2, "objectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2310
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeStyle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2312
    .end local v2    # "objectEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 674
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v8

    if-nez v8, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 679
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 680
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 681
    .local v5, "param":Ljava/lang/Object;
    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 683
    .local v7, "value":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 684
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_NULL_KEY:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v11, "updateProperties"

    sget-object v12, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_NULL_KEY:Lcom/taobao/weex/common/WXErrorCode;

    .line 686
    invoke-virtual {v12}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 684
    invoke-static {v9, v10, v11, v12, v13}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 688
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 689
    invoke-virtual {p0, v4, v7}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 691
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 692
    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    if-eqz v9, :cond_0

    .line 695
    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v9, v4}, Lcom/taobao/weex/ui/IFComponentHolder;->getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v3

    .line 696
    .local v3, "invoker":Lcom/taobao/weex/bridge/Invoker;
    if-eqz v3, :cond_2

    .line 698
    :try_start_0
    invoke-interface {v3}, Lcom/taobao/weex/bridge/Invoker;->getParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 699
    .local v6, "paramClazzs":[Ljava/lang/reflect/Type;
    array-length v9, v6

    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    .line 700
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[WXComponent] setX method only one parameter\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    .end local v6    # "paramClazzs":[Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "[WXComponent] updateProperties :class:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " function "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 703
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "paramClazzs":[Ljava/lang/reflect/Type;
    :cond_5
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v6, v9

    invoke-static {v9, v5}, Lcom/taobao/weex/utils/WXReflectionUtils;->parseArgument(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 704
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-interface {v3, p0, v9}, Lcom/taobao/weex/bridge/Invoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 712
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "invoker":Lcom/taobao/weex/bridge/Invoker;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "param":Ljava/lang/Object;
    .end local v6    # "paramClazzs":[Ljava/lang/reflect/Type;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->readyToRender()V

    .line 713
    instance-of v8, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v8, :cond_0

    move-object v2, p0

    .line 714
    check-cast v2, Lcom/taobao/weex/ui/flat/FlatComponent;

    .line 715
    .local v2, "flatComponent":Lcom/taobao/weex/ui/flat/FlatComponent;
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 716
    invoke-interface {v2}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v8

    instance-of v8, v8, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    if-nez v8, :cond_0

    .line 717
    invoke-interface {v2}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v8

    iget-object v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-interface {v8, v9}, Lcom/taobao/weex/ui/flat/widget/Widget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    goto/16 :goto_0
.end method

.method public updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 236
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->applyBorder(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 240
    :cond_0
    return-void
.end method

.method public updateStyles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent;, "Lcom/taobao/weex/ui/component/WXComponent<TT;>;"
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 245
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyBorder(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 247
    :cond_0
    return-void
.end method
