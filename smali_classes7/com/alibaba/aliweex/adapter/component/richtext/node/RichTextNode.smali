.class public abstract Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
.super Ljava/lang/Object;
.source "RichTextNode.java"


# static fields
.field public static final ATTR:Ljava/lang/String; = "attr"

.field public static final CHILDREN:Ljava/lang/String; = "children"

.field public static final ITEM_CLICK:Ljava/lang/String; = "itemclick"

.field private static final MAX_LEVEL:I = 0xff

.field public static final PSEUDO_REF:Ljava/lang/String; = "pseudoRef"

.field public static final STYLE:Ljava/lang/String; = "style"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field protected attr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;",
            ">;"
        }
    .end annotation
.end field

.field protected final mComponentRef:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mInstanceId:Ljava/lang/String;

.field protected style:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "componentRef"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->mContext:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->mInstanceId:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->mComponentRef:Ljava/lang/String;

    .line 260
    return-void
.end method

.method private createCustomStyleSpan()Lcom/taobao/weex/dom/WXCustomStyleSpan;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 401
    const/4 v2, -0x1

    .local v2, "fontWeight":I
    const/4 v1, -0x1

    .line 402
    .local v1, "fontStyle":I
    const/4 v0, 0x0

    .line 403
    .local v0, "fontFamily":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string/jumbo v4, "fontWeight"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v3}, Lcom/taobao/weex/dom/WXStyle;->getFontWeight(Ljava/util/Map;)I

    move-result v2

    .line 406
    :cond_0
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string/jumbo v4, "fontStyle"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v3}, Lcom/taobao/weex/dom/WXStyle;->getFontStyle(Ljava/util/Map;)I

    move-result v1

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string/jumbo v4, "fontFamily"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v3}, Lcom/taobao/weex/dom/WXStyle;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_2
    if-ne v2, v5, :cond_3

    if-ne v1, v5, :cond_3

    if-eqz v0, :cond_4

    .line 415
    :cond_3
    new-instance v3, Lcom/taobao/weex/dom/WXCustomStyleSpan;

    invoke-direct {v3, v1, v2, v0}, Lcom/taobao/weex/dom/WXCustomStyleSpan;-><init>(IILjava/lang/String;)V

    .line 417
    :goto_0
    return-object v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static createPriorityFlag(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 371
    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    rsub-int v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0xff0000

    goto :goto_0
.end method

.method public static createSpanFlag(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 292
    invoke-static {p0}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->createPriorityFlag(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "componentRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "json"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-static {p3}, Lcoo;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 270
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 271
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v5, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 273
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 274
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_0

    .line 276
    invoke-static {p0, p1, p2, v3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeManager;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;

    move-result-object v4

    .line 277
    .local v4, "node":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    if-eqz v4, :cond_0

    .line 278
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .end local v4    # "node":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-static {v5}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->parse(Ljava/util/List;)Landroid/text/Spannable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 288
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;>;"
    :goto_1
    return-object v6

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v6, Landroid/text/SpannableString;

    const-string/jumbo v7, ""

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private static parse(Ljava/util/List;)Landroid/text/Spannable;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;>;"
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 380
    .local v1, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;

    .line 381
    .local v0, "richTextNode":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->toSpan(I)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 383
    .end local v0    # "richTextNode":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    :cond_0
    return-object v1
.end method

.method private toSpan(I)Landroid/text/Spannable;
    .locals 4
    .param p1, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 387
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 388
    .local v1, "spannableStringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 389
    invoke-virtual {p0}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->isInternalNode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;

    .line 391
    .local v0, "child":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    add-int/lit8 v3, p1, 0x1

    invoke-direct {v0, v3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->toSpan(I)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 394
    .end local v0    # "child":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->updateSpans(Landroid/text/SpannableStringBuilder;I)V

    .line 395
    return-object v1
.end method


# virtual methods
.method protected abstract isInternalNode()Z
.end method

.method final parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "instanceId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "componentRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 305
    :try_start_0
    const-string/jumbo v7, "style"

    invoke-virtual {p4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .local v5, "jsonStyle":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v5, :cond_1

    .line 306
    new-instance v7, Lfk;

    invoke-direct {v7}, Lfk;-><init>()V

    iput-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    .line 307
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 312
    :goto_0
    const-string/jumbo v7, "attr"

    invoke-virtual {p4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .local v3, "jsonAttr":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_3

    .line 313
    new-instance v7, Lfk;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v8

    invoke-direct {v7, v8}, Lfk;-><init>(I)V

    iput-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    .line 314
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 319
    :goto_1
    const-string/jumbo v7, "children"

    invoke-virtual {p4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .local v4, "jsonChildren":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_4

    .line 320
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    .line 321
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 322
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 324
    .local v0, "child":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {p1, p2, p3, v0}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNodeManager;->createRichTextNode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;

    move-result-object v6

    .line 325
    .local v6, "node":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    if-eqz v6, :cond_0

    .line 326
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->children:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 309
    .end local v0    # "child":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "jsonAttr":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "jsonChildren":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "node":Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
    :cond_1
    new-instance v7, Lfk;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lfk;-><init>(I)V

    iput-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v5    # "jsonStyle":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void

    .line 316
    .restart local v3    # "jsonAttr":Lcom/alibaba/fastjson/JSONObject;
    .restart local v5    # "jsonStyle":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :try_start_1
    new-instance v7, Lfk;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lfk;-><init>(I)V

    iput-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->attr:Ljava/util/Map;

    goto :goto_1

    .line 330
    .restart local v4    # "jsonChildren":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->children:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .locals 10
    .param p1, "spannableStringBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 338
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 339
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    iget-object v6, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 340
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 342
    .local v5, "spans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->createCustomStyleSpan()Lcom/taobao/weex/dom/WXCustomStyleSpan;

    move-result-object v1

    .line 343
    .local v1, "customStyleSpan":Lcom/taobao/weex/dom/WXCustomStyleSpan;
    if-eqz v1, :cond_0

    .line 344
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    iget-object v6, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string/jumbo v7, "fontSize"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 348
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v8

    invoke-static {v7, v8}, Lcom/taobao/weex/dom/WXStyle;->getFontSize(Ljava/util/Map;I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    iget-object v6, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string/jumbo v7, "backgroundColor"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    iget-object v6, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string/jumbo v7, "backgroundColor"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v0

    .line 354
    .local v0, "color":I
    if-eqz v0, :cond_2

    .line 355
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v0    # "color":I
    :cond_2
    iget-object v6, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    const-string/jumbo v7, "color"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 360
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->style:Ljava/util/Map;

    invoke-static {v7}, Lcom/taobao/weex/dom/WXStyle;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_3
    invoke-static {p2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;->createSpanFlag(I)I

    move-result v4

    .line 364
    .local v4, "spanFlag":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 365
    .local v3, "span":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, v3, v9, v7, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 368
    .end local v1    # "customStyleSpan":Lcom/taobao/weex/dom/WXCustomStyleSpan;
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanFlag":I
    .end local v5    # "spans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    return-void
.end method
