.class public Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;
.super Ljava/lang/Object;
.source "ContactHomePageModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    }
.end annotation


# instance fields
.field private commonContactModel:Lfhm;

.field private component:Lcom/alibaba/android/user/contact/homepage/Component;

.field private composite:Lcom/alibaba/android/user/contact/homepage/Composite;

.field private itemType:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

.field private orgCount:I

.field private sectionTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public getCommonContactModel()Lfhm;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->commonContactModel:Lfhm;

    return-object v0
.end method

.method public getComponent()Lcom/alibaba/android/user/contact/homepage/Component;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->component:Lcom/alibaba/android/user/contact/homepage/Component;

    return-object v0
.end method

.method public getComposite()Lcom/alibaba/android/user/contact/homepage/Composite;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->composite:Lcom/alibaba/android/user/contact/homepage/Composite;

    return-object v0
.end method

.method public getItemType()Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->itemType:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    return-object v0
.end method

.method public getOrgCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->orgCount:I

    return v0
.end method

.method public getSectionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->sectionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setCommonContactModel(Lfhm;)V
    .locals 0
    .param p1, "commonContactModel"    # Lfhm;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->commonContactModel:Lfhm;

    .line 62
    return-void
.end method

.method public setComponents(Lcom/alibaba/android/user/contact/homepage/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/alibaba/android/user/contact/homepage/Component;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->component:Lcom/alibaba/android/user/contact/homepage/Component;

    .line 38
    return-void
.end method

.method public setComposite(Lcom/alibaba/android/user/contact/homepage/Composite;)V
    .locals 0
    .param p1, "composite"    # Lcom/alibaba/android/user/contact/homepage/Composite;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->composite:Lcom/alibaba/android/user/contact/homepage/Composite;

    .line 30
    return-void
.end method

.method public setItemType(Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;)V
    .locals 0
    .param p1, "itemType"    # Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->itemType:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    .line 66
    return-void
.end method

.method public setOrgCount(I)V
    .locals 0
    .param p1, "orgCount"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->orgCount:I

    .line 46
    return-void
.end method

.method public setSectionTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionTitle"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->sectionTitle:Ljava/lang/String;

    .line 54
    return-void
.end method
