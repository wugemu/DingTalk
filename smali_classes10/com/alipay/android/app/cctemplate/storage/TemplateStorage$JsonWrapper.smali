.class public Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
.super Ljava/lang/Object;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonWrapper"
.end annotation


# static fields
.field public static final HTML:Ljava/lang/String; = "HTML"

.field public static final JSON:Ljava/lang/String; = "JSON"


# instance fields
.field format:Ljava/lang/String;

.field html:Ljava/lang/String;

.field json:Ljava/lang/String;

.field publishVersion:Ljava/lang/String;

.field size:I

.field time:Ljava/lang/String;

.field tplVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/android/app/cctemplate/model/Template;)V
    .locals 2
    .param p1, "template"    # Lcom/alipay/android/app/cctemplate/model/Template;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "template is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    const-string/jumbo v1, "HTML"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->html:Ljava/lang/String;

    .line 74
    :goto_0
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->size:I

    .line 75
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->publishVersion:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->time:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->tplVersion:Ljava/lang/String;

    .line 79
    return-void

    .line 72
    :cond_1
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->json:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "json is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->json:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->size:I

    .line 58
    const-string/jumbo v0, "JSON"

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static valueOf(Lcom/alipay/android/app/cctemplate/model/Template;)Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    .locals 1
    .param p0, "tpl"    # Lcom/alipay/android/app/cctemplate/model/Template;

    .prologue
    .line 82
    new-instance v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;-><init>(Lcom/alipay/android/app/cctemplate/model/Template;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    const-string/jumbo v0, ""

    .line 87
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->publishVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->publishVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->tplVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->tplVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_3
    return-object v0
.end method
