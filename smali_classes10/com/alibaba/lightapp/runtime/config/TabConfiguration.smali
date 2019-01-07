.class public Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
.super Ljava/lang/Object;
.source "TabConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/config/TabConfiguration$a;
    }
.end annotation


# instance fields
.field private borderNormalColor:Ljava/lang/String;

.field private borderSelectedColor:Ljava/lang/String;

.field private borderWidth:I

.field private groupId:Ljava/lang/String;

.field private isPopParentFrame:Z

.field private selectedTabIndex:I

.field private tabBgColor:Ljava/lang/String;

.field private tabItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private textNormalColor:Ljava/lang/String;

.field private textSelectedColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->borderWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->borderNormalColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->borderSelectedColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->textNormalColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->textSelectedColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->tabBgColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->tabItemInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->isPopParentFrame:Z

    return p1
.end method

.method static synthetic access$802(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->selectedTabIndex:I

    return p1
.end method

.method static synthetic access$902(Lcom/alibaba/lightapp/runtime/config/TabConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/config/TabConfiguration;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->groupId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getBorderNormalColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->borderNormalColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderSelectedColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->borderSelectedColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->borderWidth:I

    return v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTabIndex()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->selectedTabIndex:I

    return v0
.end method

.method public getTabBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->tabBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTabItemInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->tabItemInfos:Ljava/util/List;

    return-object v0
.end method

.method public getTextNormalColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->textNormalColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSelectedColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->textSelectedColor:Ljava/lang/String;

    return-object v0
.end method

.method public isPopParentFrame()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/config/TabConfiguration;->isPopParentFrame:Z

    return v0
.end method
