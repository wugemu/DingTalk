.class public Lcom/alibaba/android/user/contact/homepage/Component;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;,
        Lcom/alibaba/android/user/contact/homepage/Component$GroupType;,
        Lcom/alibaba/android/user/contact/homepage/Component$ItemType;
    }
.end annotation


# instance fields
.field protected mIconInfo:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

.field protected mName:Ljava/lang/String;

.field protected mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public getIconInfo()Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mIconInfo:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mType:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public setIconInfo(Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;)V
    .locals 0
    .param p1, "iconInfo"    # Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mIconInfo:Lcom/alibaba/android/user/contact/homepage/Component$IconInfo;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/alibaba/android/user/contact/homepage/Component;->mType:I

    .line 39
    return-void
.end method
