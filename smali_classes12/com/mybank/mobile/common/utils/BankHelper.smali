.class public Lcom/mybank/mobile/common/utils/BankHelper;
.super Ljava/lang/Object;
.source "BankHelper.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljfx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mybank/mobile/common/utils/BankHelper;->a:Ljava/util/List;

    .line 48
    invoke-static {p1}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mybank/mobile/common/utils/BankHelper;->a:Ljava/util/List;

    .line 49
    return-void
.end method

.method private static a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)I
    .locals 3
    .param p0, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "resId":I
    return v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 220
    const/4 v2, 0x0

    invoke-interface {p1, v3, p2, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "resId":I
    if-nez v0, :cond_2

    .line 222
    invoke-interface {p1, v3, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1242
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1241
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "icon"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    const-string/jumbo v1, "asset://com.mybank.android.phone/bankwatermark/DEFAULT.png"

    goto :goto_0

    .line 1244
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 230
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljfx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, "banks":Ljava/util/List;, "Ljava/util/List<Ljfx;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Ljfw$e;->bank_set:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 77
    .local v2, "xml":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .local v3, "xmlEventType":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 78
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string/jumbo v4, "bank"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    new-instance v0, Ljfx;

    invoke-direct {v0}, Ljfx;-><init>()V

    .line 80
    .local v0, "bank":Ljfx;
    const-string/jumbo v4, "id"

    invoke-static {p0, v2, v4}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljfx;->a:Ljava/lang/String;

    .line 81
    const-string/jumbo v4, "name"

    invoke-static {p0, v2, v4}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljfx;->b:Ljava/lang/String;

    .line 82
    const-string/jumbo v4, "briefname"

    invoke-static {p0, v2, v4}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljfx;->c:Ljava/lang/String;

    .line 83
    const-string/jumbo v4, "code"

    invoke-static {p0, v2, v4}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljfx;->d:Ljava/lang/String;

    .line 84
    const-string/jumbo v4, "icon"

    invoke-static {p0, v2, v4}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljfx;->e:Ljava/lang/String;

    .line 85
    const-string/jumbo v4, "watermark"

    invoke-static {p0, v2, v4}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ljfx;->g:Ljava/lang/String;

    .line 86
    const-string/jumbo v4, "color"

    invoke-static {p0, v2, v4}, Lcom/mybank/mobile/common/utils/BankHelper;->b(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Ljfx;->h:I

    .line 87
    const-string/jumbo v4, "colorindex"

    invoke-static {v2, v4}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Ljfx;->i:I

    .line 88
    iget-object v4, v0, Ljfx;->e:Ljava/lang/String;

    iput-object v4, v0, Ljfx;->f:Ljava/lang/String;

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "bank":Ljfx;
    .end local v2    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v3    # "xmlEventType":I
    :catch_0
    move-exception v4

    .line 95
    :cond_1
    return-object v1
.end method

.method private static a()Ljfx;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    new-instance v0, Ljfx;

    invoke-direct {v0}, Ljfx;-><init>()V

    .line 136
    .local v0, "defaultBank":Ljfx;
    const-string/jumbo v1, "DEFAULT"

    iput-object v1, v0, Ljfx;->a:Ljava/lang/String;

    .line 137
    const-string/jumbo v1, ""

    iput-object v1, v0, Ljfx;->b:Ljava/lang/String;

    .line 138
    const-string/jumbo v1, ""

    iput-object v1, v0, Ljfx;->c:Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "DEFAULT"

    iput-object v1, v0, Ljfx;->d:Ljava/lang/String;

    .line 140
    const-string/jumbo v1, "asset://com.mybank.android.phone/bankicon/DEFAULT.png"

    iput-object v1, v0, Ljfx;->e:Ljava/lang/String;

    .line 141
    const-string/jumbo v1, "asset://com.mybank.android.phone/bankicon/DEFAULT_bg.png"

    iput-object v1, v0, Ljfx;->g:Ljava/lang/String;

    .line 142
    iput v2, v0, Ljfx;->h:I

    .line 143
    iput v2, v0, Ljfx;->i:I

    .line 144
    const-string/jumbo v1, "asset://com.mybank.android.phone/bankicon/DEFAULT.png"

    iput-object v1, v0, Ljfx;->f:Ljava/lang/String;

    .line 145
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljfx;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # Ljava/lang/String;

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Ljfw$e;->bank_set:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 108
    .local v1, "xml":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, "xmlEventType":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 109
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string/jumbo v3, "bank"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "code"

    .line 110
    invoke-static {p0, v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    new-instance v0, Ljfx;

    invoke-direct {v0}, Ljfx;-><init>()V

    .line 112
    .local v0, "bank":Ljfx;
    const-string/jumbo v3, "id"

    invoke-static {p0, v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljfx;->a:Ljava/lang/String;

    .line 113
    const-string/jumbo v3, "name"

    invoke-static {p0, v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljfx;->b:Ljava/lang/String;

    .line 114
    const-string/jumbo v3, "briefname"

    invoke-static {p0, v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljfx;->c:Ljava/lang/String;

    .line 115
    const-string/jumbo v3, "code"

    invoke-static {p0, v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljfx;->d:Ljava/lang/String;

    .line 116
    const-string/jumbo v3, "icon"

    invoke-static {p0, v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljfx;->e:Ljava/lang/String;

    .line 117
    const-string/jumbo v3, "watermark"

    invoke-static {p0, v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljfx;->g:Ljava/lang/String;

    .line 118
    const-string/jumbo v3, "color"

    invoke-static {p0, v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->b(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Ljfx;->h:I

    .line 119
    const-string/jumbo v3, "colorindex"

    invoke-static {v1, v3}, Lcom/mybank/mobile/common/utils/BankHelper;->a(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Ljfx;->i:I

    .line 120
    iget-object v3, v0, Ljfx;->e:Ljava/lang/String;

    iput-object v3, v0, Ljfx;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "bank":Ljfx;
    .end local v1    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v2    # "xmlEventType":I
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v3

    invoke-static {}, Lcom/mybank/mobile/common/utils/BankHelper;->a()Ljfx;

    move-result-object v0

    goto :goto_0

    .line 127
    .restart local v1    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "xmlEventType":I
    :cond_1
    invoke-static {}, Lcom/mybank/mobile/common/utils/BankHelper;->a()Ljfx;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Landroid/content/res/XmlResourceParser;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 268
    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 270
    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 272
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method
