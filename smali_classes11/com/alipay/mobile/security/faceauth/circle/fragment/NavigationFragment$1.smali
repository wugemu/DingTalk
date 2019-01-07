.class final Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;
.super Landroid/os/Handler;
.source "NavigationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    .line 125
    .local v2, "what":I
    packed-switch v2, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CLICK_START_CAPTURE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    new-instance v4, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;

    invoke-direct {v4}, Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceDetectFragment;-><init>()V

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->forward(Lcom/alipay/mobile/security/bio/workspace/BioFragment;)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->access$100(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Landroid/webkit/WebView;

    move-result-object v3

    const-string/jumbo v4, "file:///android_asset/html/nav/facewelcome.html"

    .line 137
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->access$100(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Landroid/webkit/WebView;

    move-result-object v3

    const-string/jumbo v4, "file:///android_asset/html/nav/facewelcome.html"

    .line 142
    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V

    .line 150
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    iget-object v3, v3, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    const/16 v4, 0xca

    invoke-interface {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->sendResponse(I)V

    .line 151
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    iget-object v3, v3, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->mFaceCircleCallBack:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto :goto_0

    .line 154
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, "log":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v0, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "h5_guide_log"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment$1;->a:Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;

    invoke-static {v3}, Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;->access$000(Lcom/alipay/mobile/security/faceauth/circle/fragment/NavigationFragment;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DEV_TECH_SEED:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
