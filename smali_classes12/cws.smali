.class public final Lcws;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "QuickReplyItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcws$d;,
        Lcws$a;,
        Lcws$b;,
        Lcws$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcws$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcws$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Handler;

.field public c:Lcws$c;

.field private d:Landroid/content/Context;

.field private e:Ldsb;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldsb;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "retailUserInfoModel"    # Ldsb;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcws;->a:Ljava/util/List;

    .line 372
    new-instance v0, Lcws$5;

    invoke-direct {v0, p0}, Lcws$5;-><init>(Lcws;)V

    iput-object v0, p0, Lcws;->f:Landroid/view/View$OnClickListener;

    .line 85
    iput-object p1, p0, Lcws;->d:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcws;->e:Ldsb;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcws;->b:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    iget-object v1, p0, Lcws;->e:Ldsb;

    if-nez v1, :cond_0

    .line 163
    const-string/jumbo v1, ""

    .line 173
    :goto_0
    return-object v1

    .line 165
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "taobaoId"

    iget-object v3, p0, Lcws;->e:Ldsb;

    iget-object v3, v3, Ldsb;->c:Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "cId"

    iget-object v3, p0, Lcws;->e:Ldsb;

    iget-object v3, v3, Ldsb;->d:Ljava/lang/String;

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "currentStaffId"

    iget-object v3, p0, Lcws;->e:Ldsb;

    iget-object v3, v3, Ldsb;->b:Ljava/lang/String;

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "corpId"

    iget-object v3, p0, Lcws;->e:Ldsb;

    iget-object v3, v3, Ldsb;->e:Ljava/lang/String;

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "dd_func_wk"

    const-string/jumbo v3, "true"

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic a(Lcws;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcws;

    .prologue
    .line 52
    iget-object v0, p0, Lcws;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcws;I)V
    .locals 3
    .param p0, "x0"    # Lcws;
    .param p1, "x1"    # I

    .prologue
    .line 52
    .line 2177
    packed-switch p1, :pswitch_data_0

    .line 2212
    :cond_0
    :goto_0
    return-void

    .line 2179
    :pswitch_0
    iget-object v0, p0, Lcws;->c:Lcws$c;

    if-eqz v0, :cond_0

    .line 2180
    iget-object v0, p0, Lcws;->c:Lcws$c;

    invoke-interface {v0}, Lcws$c;->onClick()V

    goto :goto_0

    .line 2184
    :pswitch_1
    const-string/jumbo v0, "https://ulifem.taobao.com/messageGoods"

    .line 2185
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v1

    sget v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v1, v2, :cond_2

    .line 2186
    const-string/jumbo v0, "https://pre-ulifem.taobao.com/messageGoods"

    .line 2190
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcws;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2191
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2194
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2195
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v2, p0, Lcws;->d:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2187
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v1

    if-nez v1, :cond_1

    .line 2188
    const-string/jumbo v0, "http://ulifem.daily.taobao.net/messageGoods"

    goto :goto_1

    .line 2199
    :pswitch_2
    const-string/jumbo v0, "https://ulifem.taobao.com/messageCoupon"

    .line 2200
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v1

    sget v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v1, v2, :cond_4

    .line 2201
    const-string/jumbo v0, "https://pre-ulifem.taobao.com/messageCoupon"

    .line 2205
    :cond_3
    :goto_2
    invoke-direct {p0, v0}, Lcws;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2210
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v2, p0, Lcws;->d:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2202
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v1

    if-nez v1, :cond_3

    .line 2203
    const-string/jumbo v0, "http://ulifem.daily.taobao.net/messageCoupon"

    goto :goto_2

    .line 2215
    :pswitch_3
    const-string/jumbo v0, "https://ulifem.taobao.com/daogouContentSend"

    .line 2216
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v1

    sget v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v1, v2, :cond_6

    .line 2217
    const-string/jumbo v0, "https://pre-ulifem.taobao.com/daogouContentSend"

    .line 2221
    :cond_5
    :goto_3
    invoke-direct {p0, v0}, Lcws;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2225
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2226
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    iget-object v2, p0, Lcws;->d:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2218
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v1

    if-nez v1, :cond_5

    .line 2219
    const-string/jumbo v0, "https://pre-ulifem.taobao.com/daogouContentSend"

    goto :goto_3

    .line 2177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcws;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcws;

    .prologue
    .line 52
    iget-object v0, p0, Lcws;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcws;I)V
    .locals 5
    .param p0, "x0"    # Lcws;
    .param p1, "x1"    # I

    .prologue
    .line 52
    .line 2325
    iget-object v0, p0, Lcws;->e:Ldsb;

    if-eqz v0, :cond_0

    .line 2328
    new-instance v1, Ldrx;

    invoke-direct {v1}, Ldrx;-><init>()V

    .line 2329
    const-string/jumbo v0, "mtop.taobao.retail.update.itemversion"

    iput-object v0, v1, Ldrx;->a:Ljava/lang/String;

    .line 2330
    const-string/jumbo v0, "1.0"

    iput-object v0, v1, Ldrx;->b:Ljava/lang/String;

    .line 2331
    iget-object v0, p0, Lcws;->e:Ldsb;

    iget-object v0, v0, Ldsb;->e:Ljava/lang/String;

    iput-object v0, v1, Ldrx;->c:Ljava/lang/String;

    .line 2332
    iget-object v0, p0, Lcws;->e:Ldsb;

    iget-object v0, v0, Ldsb;->b:Ljava/lang/String;

    iput-object v0, v1, Ldrx;->d:Ljava/lang/String;

    .line 2333
    iput p1, v1, Ldrx;->e:I

    .line 2335
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lcws$3;

    invoke-direct {v3, p0}, Lcws$3;-><init>(Lcws;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v0, p0, Lcws;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v2, v3, v4, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2352
    new-instance v2, Lcws$4;

    invoke-direct {v2, p0, v0}, Lcws$4;-><init>(Lcws;Lcom/alibaba/wukong/Callback;)V

    .line 2359
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;

    .line 2360
    if-eqz v0, :cond_0

    .line 2361
    invoke-virtual {v1}, Ldrx;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2362
    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;->mtop(Ljava/lang/String;Liyv;)V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-object v5, p0, Lcws;->e:Ldsb;

    if-nez v5, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;-><init>()V

    .line 242
    .local v2, "request":Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;
    const-string/jumbo v5, "mtop.taobao.retail.get.hasitems"

    iput-object v5, v2, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->api:Ljava/lang/String;

    .line 243
    const-string/jumbo v5, "1.0"

    iput-object v5, v2, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->v:Ljava/lang/String;

    .line 244
    iget-object v5, p0, Lcws;->e:Ldsb;

    iget-object v5, v5, Ldsb;->e:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->corpId:Ljava/lang/String;

    .line 245
    iget-object v5, p0, Lcws;->e:Ldsb;

    iget-object v5, v5, Ldsb;->b:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->dingEmployeeId:Ljava/lang/String;

    .line 247
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v6

    new-instance v7, Lcws$1;

    invoke-direct {v7, p0}, Lcws$1;-><init>(Lcws;)V

    const-class v8, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lcws;->d:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-interface {v6, v7, v8, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 304
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    new-instance v3, Lcws$2;

    invoke-direct {v3, p0, v0}, Lcws$2;-><init>(Lcws;Lcom/alibaba/wukong/Callback;)V

    .line 317
    .local v3, "requestHandler":Lhzy;, "Lhzy<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v5, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;

    .line 318
    .local v4, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;
    if-eqz v4, :cond_0

    .line 319
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/models/QuickReplyBarRequestObject;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "params":Ljava/lang/String;
    invoke-interface {v4, v1, v3}, Lcom/alibaba/android/dingtalkim/models/idl/service/TunnelIService;->mtop(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final getItemCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcws;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcws;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v4, 0x41000000    # 8.0f

    .line 52
    check-cast p1, Lcws$b;

    .line 1100
    iget-object v0, p0, Lcws;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1101
    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    iget-object v0, p0, Lcws;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcws$a;

    .line 1105
    if-eqz v0, :cond_0

    .line 1109
    iget-object v1, p0, Lcws;->d:Landroid/content/Context;

    iget v2, v0, Lcws$a;->a:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1110
    new-instance v2, Lcjz;

    iget v3, v0, Lcws$a;->e:I

    invoke-direct {v2, v1, v3}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1111
    iget-object v1, p1, Lcws$b;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    iget-object v1, p1, Lcws$b;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcws$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    iget-boolean v1, v0, Lcws$a;->d:Z

    if-eqz v1, :cond_2

    .line 1116
    iget-object v1, p1, Lcws$b;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    iget-object v1, p1, Lcws$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1118
    iget-object v2, p0, Lcws;->d:Landroid/content/Context;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1119
    iget-object v2, p1, Lcws$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1127
    :goto_1
    iget-object v1, p0, Lcws;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_3

    .line 1128
    iget-object v1, p1, Lcws$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1129
    iget-object v2, p0, Lcws;->d:Landroid/content/Context;

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 1130
    iget-object v2, p1, Lcws$b;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    :goto_2
    iget-object v1, p1, Lcws$b;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1121
    :cond_2
    iget-object v1, p1, Lcws$b;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1122
    iget-object v1, p1, Lcws$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1123
    iget-object v2, p0, Lcws;->d:Landroid/content/Context;

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1124
    iget-object v2, p1, Lcws$b;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1132
    :cond_3
    iget-object v1, p1, Lcws$b;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1133
    iget-object v2, p0, Lcws;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 1134
    iget-object v2, p1, Lcws$b;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    .line 2093
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->im_quick_bar_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2094
    iget-object v1, p0, Lcws;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2095
    new-instance v1, Lcws$b;

    invoke-direct {v1, v0}, Lcws$b;-><init>(Landroid/view/View;)V

    .line 52
    return-object v1
.end method
