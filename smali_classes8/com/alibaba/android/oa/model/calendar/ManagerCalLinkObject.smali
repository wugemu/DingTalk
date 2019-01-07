.class public Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;
.super Ljava/lang/Object;
.source "ManagerCalLinkObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3bd94ba023658532L


# instance fields
.field public mLink:Ljava/lang/String;

.field public mTitleObject:Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lefl;)Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;
    .locals 2
    .param p0, "model"    # Lefl;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;
    if-eqz p0, :cond_0

    .line 35
    new-instance v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;

    .end local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;
    invoke-direct {v0}, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;-><init>()V

    .line 36
    .restart local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;
    iget-object v1, p0, Lefl;->a:Lefo;

    invoke-static {v1}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;->fromIDLModel(Lefo;)Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;->mTitleObject:Lcom/alibaba/android/oa/model/calendar/ManagerCalTextObject;

    .line 37
    iget-object v1, p0, Lefl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalLinkObject;->mLink:Ljava/lang/String;

    .line 39
    :cond_0
    return-object v0
.end method
