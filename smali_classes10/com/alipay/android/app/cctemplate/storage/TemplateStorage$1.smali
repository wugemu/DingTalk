.class final Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$1;
.super Landroid/util/LruCache;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$1;->sizeOf(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;)I

    move-result v0

    return v0
.end method

.method protected final sizeOf(Ljava/lang/String;Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "jsonWrapper"    # Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    .prologue
    .line 34
    iget v0, p2, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->size:I

    div-int/lit16 v0, v0, 0x400

    return v0
.end method
