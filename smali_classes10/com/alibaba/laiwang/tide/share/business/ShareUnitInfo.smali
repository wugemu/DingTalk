.class public Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;
.super Ljava/lang/Object;
.source "ShareUnitInfo.java"


# instance fields
.field private defautCheck:Z

.field private icon:I

.field private pakName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private ut:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->icon:I

    return v0
.end method

.method public getPakName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->pakName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->ut:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isDefautCheck()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->defautCheck:Z

    return v0
.end method

.method public setDefautCheck(Z)V
    .locals 0
    .param p1, "defautCheck"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->defautCheck:Z

    .line 28
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->icon:I

    .line 60
    return-void
.end method

.method public setPakName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pakName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->pakName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->title:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setUt(Ljava/lang/String;)V
    .locals 0
    .param p1, "ut"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->ut:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->value:Ljava/lang/String;

    .line 44
    return-void
.end method
