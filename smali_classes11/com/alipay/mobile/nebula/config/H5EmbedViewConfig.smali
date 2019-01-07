.class public Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
.super Ljava/lang/Object;
.source "H5EmbedViewConfig.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5EmbedViewConfig"


# instance fields
.field private bundleName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->bundleName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->className:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->type:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getBundleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->bundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->type:Ljava/lang/String;

    return-object v0
.end method
