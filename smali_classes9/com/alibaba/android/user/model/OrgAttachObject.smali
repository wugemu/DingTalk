.class public Lcom/alibaba/android/user/model/OrgAttachObject;
.super Ljava/lang/Object;
.source "OrgAttachObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x29a20eb2e80b9d1aL


# instance fields
.field public templateId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/model/OrgAttachObject;->templateId:J

    return-void
.end method

.method public static fromIDLModel(Lfoy;)Lcom/alibaba/android/user/model/OrgAttachObject;
    .locals 4
    .param p0, "model"    # Lfoy;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/model/OrgAttachObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgAttachObject;-><init>()V

    .line 43
    .local v0, "object":Lcom/alibaba/android/user/model/OrgAttachObject;
    iget-object v1, p0, Lfoy;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 43
    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgAttachObject;->templateId:J

    goto :goto_0
.end method

.method public static toIDLModel(Lcom/alibaba/android/user/model/OrgAttachObject;)Lfoy;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/user/model/OrgAttachObject;

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lfoy;

    invoke-direct {v0}, Lfoy;-><init>()V

    .line 55
    .local v0, "model":Lfoy;
    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgAttachObject;->templateId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfoy;->a:Ljava/lang/Long;

    goto :goto_0
.end method
