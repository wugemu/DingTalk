.class public Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
.super Ljava/lang/Object;
.source "H5NavMenuItem.java"


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconDownloading:Z

.field public iconUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public redDotNum:Ljava/lang/String;

.field public selected:Z

.field public tag:Ljava/lang/String;

.field public temp:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "selected"    # Z

    .prologue
    .line 39
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "temp"    # Z

    .prologue
    .line 35
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "temp"    # Z
    .param p5, "selected"    # Z

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->tag:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-boolean p4, p0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->temp:Z

    .line 30
    iput-boolean p5, p0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->selected:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->iconDownloading:Z

    .line 32
    return-void
.end method


# virtual methods
.method public setRedDotNum(Ljava/lang/String;)V
    .locals 0
    .param p1, "redDotNum"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->redDotNum:Ljava/lang/String;

    .line 44
    return-void
.end method
