.class public Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;
.super Ljava/lang/Object;
.source "SelectedContactsRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mContactChooseRequest:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

.field private mMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactChooseRequest()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->mContactChooseRequest:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->mMode:I

    return v0
.end method

.method public setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V
    .locals 0
    .param p1, "contactChooseRequest"    # Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->mContactChooseRequest:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 36
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->mMode:I

    .line 44
    return-void
.end method
