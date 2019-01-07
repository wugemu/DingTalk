.class public Lcom/alibaba/alimei/mail/widget/GuardAtEditText;
.super Landroid/widget/EditText;
.source "GuardAtEditText.java"

# interfaces
.implements Lafk;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:C

.field public c:C

.field public d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    .line 33
    const/16 v0, 0x40

    iput-char v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    const/4 v0, 0x7

    iput-char v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->d:Z

    .line 1053
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    .line 33
    const/16 v0, 0x40

    iput-char v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    const/4 v0, 0x7

    iput-char v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->d:Z

    .line 2053
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    .line 33
    const/16 v0, 0x40

    iput-char v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    const/4 v0, 0x7

    iput-char v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->d:Z

    .line 3053
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 50
    return-void
.end method

.method private a(II)I
    .locals 12
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 392
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "inputContent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 394
    .local v1, "count":I
    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "sub":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 396
    iget-char v7, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 397
    iget-char v7, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 398
    .local v4, "j":I
    if-ltz v2, :cond_4

    if-ltz v4, :cond_4

    .line 399
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "atName":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 5270
    iget-object v7, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 5271
    if-eqz v7, :cond_0

    .line 5275
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_2

    .line 5276
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 402
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 404
    :cond_1
    add-int/lit8 v2, v4, 0x1

    .line 408
    goto :goto_0

    .line 5278
    :cond_2
    iget-object v7, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5279
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    if-lt v7, v8, :cond_0

    .line 5280
    iget-object v7, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 5282
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v9

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5283
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v8, :cond_5

    .line 5284
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v7, v8

    :goto_3
    move v8, v7

    .line 5286
    goto :goto_2

    .line 5287
    :cond_3
    iput v8, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    goto :goto_1

    .line 409
    .end local v0    # "atName":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_4
    new-instance v5, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 410
    .local v5, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v3, v9, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 411
    invoke-virtual {v3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 412
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setText(Ljava/lang/CharSequence;)V

    .line 413
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setSelection(I)V

    .line 415
    return v1

    .end local v5    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v0    # "atName":Ljava/lang/String;
    .restart local v4    # "j":I
    :cond_5
    move v7, v8

    goto :goto_3
.end method

.method private a(IZ)I
    .locals 10
    .param p1, "cursorPos"    # I
    .param p2, "isLeft"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, -0x1

    .line 313
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "inputContent":Ljava/lang/String;
    iget v9, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    sub-int v2, p1, v9

    .line 320
    .local v2, "leftMaxPos":I
    if-gez v2, :cond_0

    .line 321
    const/4 v2, 0x0

    .line 323
    :cond_0
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "s1":Ljava/lang/String;
    iget-char v9, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    invoke-virtual {v4, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 325
    .local v6, "start":I
    if-gez v6, :cond_2

    move v0, v8

    .line 347
    :cond_1
    :goto_0
    return v0

    .line 330
    :cond_2
    iget v9, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    add-int v3, p1, v9

    .line 331
    .local v3, "rightMaxPos":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v3, v9, :cond_3

    .line 332
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 334
    :cond_3
    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "s2":Ljava/lang/String;
    iget-char v9, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 336
    .local v0, "end":I
    if-gez v0, :cond_4

    move v0, v8

    .line 337
    goto :goto_0

    .line 340
    :cond_4
    add-int/2addr v6, v2

    .line 341
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v2

    add-int/2addr v9, v0

    add-int/lit8 v0, v9, 0x1

    .line 342
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "sub":Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    move v0, v8

    .line 344
    goto :goto_0

    .line 347
    :cond_5
    if-eqz p2, :cond_1

    move v0, v6

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    const/4 p1, 0x0

    .line 243
    .end local p1    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 227
    .restart local p1    # "key":Ljava/lang/String;
    :cond_1
    iget-char v3, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    iget-char v3, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 231
    :cond_2
    new-instance v2, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 232
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 233
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    .local v0, "dest":C
    iget-char v3, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    if-ne v0, v3, :cond_4

    .line 235
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 232
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    :cond_4
    iget-char v3, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    if-eq v0, v3, :cond_3

    .line 239
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 243
    .end local v0    # "dest":C
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 157
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    const/4 v6, 0x0

    .line 141
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    return-void

    .line 144
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 5166
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->d:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 5167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 5168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5172
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5173
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 5174
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 5175
    :cond_3
    if-nez v1, :cond_9

    .line 5176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    move-object v1, v3

    .line 5192
    :goto_1
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5259
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5260
    const/4 v1, 0x0

    .line 5194
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5198
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5199
    iget-object v3, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5202
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getSelectionStart()I

    move-result v2

    .line 5203
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    .line 5204
    if-ltz v2, :cond_8

    .line 5205
    invoke-interface {v3, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5210
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    if-le v2, v3, :cond_2

    .line 5211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    goto :goto_0

    .line 5179
    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 5181
    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sdk/model/AddressModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5247
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 5248
    if-eqz v0, :cond_5

    .line 5249
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5250
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5251
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5252
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5255
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5183
    iget-object v1, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 5184
    if-nez v1, :cond_6

    .line 5185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 5188
    goto :goto_1

    .line 5263
    :cond_7
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-char v5, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v6

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    iget-char v5, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 5207
    :cond_8
    invoke-interface {v3, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3

    :cond_9
    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 421
    return-void
.end method

.method public getAtList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-static {v0}, Laew;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "content":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->d:Z

    if-eqz v2, :cond_0

    .line 96
    iget-char v2, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    const/16 v3, 0x20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 100
    .end local v0    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .end local v0    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->d:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne v0, p2, :cond_1

    .line 72
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 3370
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getSelectionStart()I

    move-result v3

    .line 3371
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getSelectionEnd()I

    move-result v4

    .line 3372
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3373
    if-ne v3, v4, :cond_3

    .line 3374
    if-lez v3, :cond_1

    iget-char v5, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_1

    .line 4352
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4353
    iget v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->e:I

    sub-int v0, v3, v0

    .line 4354
    if-gez v0, :cond_0

    move v0, v1

    .line 4357
    :cond_0
    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4358
    iget-char v5, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 4359
    if-ltz v5, :cond_2

    .line 4360
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4361
    iget-object v6, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4362
    add-int/2addr v0, v5

    .line 3376
    :goto_0
    if-ltz v0, :cond_1

    .line 3377
    invoke-direct {p0, v0, v4}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a(II)I

    move v1, v2

    .line 3383
    :cond_1
    :goto_1
    return v1

    .line 4366
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 3386
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a(II)I

    move v1, v2

    .line 74
    goto :goto_1
.end method

.method protected onSelectionChanged(II)V
    .locals 2
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 64
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->d:Z

    if-eqz v0, :cond_0

    .line 3293
    if-ne p1, p2, :cond_1

    .line 3295
    invoke-direct {p0, p1, v1}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a(IZ)I

    move-result v0

    .line 3296
    if-ltz v0, :cond_0

    .line 3297
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setSelection(I)V

    .line 3299
    .end local p1    # "selStart":I
    .end local p2    # "selEnd":I
    :cond_0
    :goto_0
    return-void

    .line 3301
    .restart local p1    # "selStart":I
    .restart local p2    # "selEnd":I
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a(IZ)I

    move-result v1

    .line 3302
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a(IZ)I

    move-result v0

    .line 3303
    if-gez v1, :cond_2

    if-ltz v0, :cond_0

    .line 3304
    :cond_2
    if-ltz v1, :cond_3

    move p1, v1

    .line 3305
    .end local p1    # "selStart":I
    :cond_3
    if-ltz v0, :cond_4

    move p2, v0

    .line 3306
    .end local p2    # "selEnd":I
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setSelection(II)V

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method
