.class public Lcom/alibaba/android/user/crm/model/CrmTagObject;
.super Ljava/lang/Object;
.source "CrmTagObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public groupName:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdlModel(Lfoo;)Lcom/alibaba/android/user/crm/model/CrmTagObject;
    .locals 3
    .param p0, "model"    # Lfoo;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/crm/model/CrmTagObject;-><init>()V

    .line 44
    .local v0, "object":Lcom/alibaba/android/user/crm/model/CrmTagObject;
    iget-object v1, p0, Lfoo;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->groupName:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lfoo;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->tags:Ljava/util/List;

    .line 46
    iget-object v1, p0, Lfoo;->c:Ljava/lang/Integer;

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 46
    iput v1, v0, Lcom/alibaba/android/user/crm/model/CrmTagObject;->type:I

    goto :goto_0
.end method
