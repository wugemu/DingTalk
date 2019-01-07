.class public Lcom/alipay/share/sdk/openapi/ui/Ui;
.super Ljava/lang/Object;
.source "Ui.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1cd3592455aff89aL


# instance fields
.field public skin:Ljava/lang/String;

.field public style:Lcom/alipay/share/sdk/openapi/ui/Style;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/ui/Ui;->skin:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Lcom/alipay/share/sdk/openapi/ui/Style;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    return-object v0
.end method

.method public setSkin(Ljava/lang/String;)V
    .locals 0
    .param p1, "skin"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/ui/Ui;->skin:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setStyle(Lcom/alipay/share/sdk/openapi/ui/Style;)V
    .locals 0
    .param p1, "style"    # Lcom/alipay/share/sdk/openapi/ui/Style;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/share/sdk/openapi/ui/Ui;->style:Lcom/alipay/share/sdk/openapi/ui/Style;

    .line 34
    return-void
.end method
