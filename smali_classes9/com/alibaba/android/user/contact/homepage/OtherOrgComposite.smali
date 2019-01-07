.class public Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;
.super Lcom/alibaba/android/user/contact/homepage/Composite;
.source "OtherOrgComposite.java"


# instance fields
.field private mUnreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/homepage/Composite;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;->mUnreadCount:I

    return-void
.end method


# virtual methods
.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;->mUnreadCount:I

    return v0
.end method

.method public setShowRedDot(I)V
    .locals 0
    .param p1, "unreadCount"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/alibaba/android/user/contact/homepage/OtherOrgComposite;->mUnreadCount:I

    .line 15
    return-void
.end method
