.class Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;
.super Ljava/lang/Object;
.source "BindingXScrollHandler.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerAppBarOffsetChangedListener"
.end annotation


# instance fields
.field private mContentOffsetY:I

.field private mLastDy:I

.field private mTy:I

.field final synthetic this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 222
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    .line 225
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mTy:I

    .line 226
    iput v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mLastDy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;
    .param p2, "x1"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;

    .prologue
    .line 222
    iget v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    return v0
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 22
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .prologue
    .line 229
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 p2, v0

    .line 230
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    sub-int v19, p2, v4

    .line 231
    .local v19, "dy":I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    .line 232
    if-nez v19, :cond_0

    .line 255
    :goto_0
    return-void

    .line 236
    :cond_0
    const/16 v20, 0x0

    .line 237
    .local v20, "isTurning":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mLastDy:I

    move/from16 v0, v19

    invoke-static {v4, v0, v5}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$300(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mTy:I

    .line 239
    const/16 v20, 0x1

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mTy:I

    sub-int v21, v4, v5

    .line 243
    .local v21, "tdy":I
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mLastDy:I

    .line 244
    if-eqz v20, :cond_2

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    const-string/jumbo v5, "turn"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->mContentOffsetY:I

    int-to-double v8, v8

    const-wide/16 v10, 0x0

    move/from16 v0, v19

    int-to-double v12, v0

    const-wide/16 v14, 0x0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v4 .. v18}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$401(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;Ljava/lang/String;DDDDDD[Ljava/lang/Object;)V

    .line 249
    :cond_2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-direct {v5, v0, v1, v2}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler$InnerAppBarOffsetChangedListener;->this$0:Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;

    .line 254
    invoke-static {v6}, Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;->access$700(Lcom/alibaba/android/bindingx/plugin/weex/BindingXScrollHandler;)Ljava/lang/String;

    move-result-object v6

    .line 249
    invoke-virtual {v4, v5, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0
.end method
