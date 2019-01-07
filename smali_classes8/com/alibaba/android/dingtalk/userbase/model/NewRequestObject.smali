.class public Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
.super Ljava/lang/Object;
.source "NewRequestObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x16d75b05a2a2a73bL


# instance fields
.field public card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

.field public id:J

.field public isHideConnection:Z

.field public isRead:Z

.field public mobile:Ljava/lang/String;

.field public orgApplyObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

.field public orgId:J

.field public orgName:Ljava/lang/String;

.field public remark:Ljava/lang/String;

.field public showMobile:Z

.field public status:I

.field public userName:Ljava/lang/String;

.field public userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;)V
    .locals 2
    .param p1, "builder"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1046
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a:J

    .line 31
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    .line 2046
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->b:I

    .line 32
    iput v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    .line 3046
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 33
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4046
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->d:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->remark:Ljava/lang/String;

    .line 5046
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->e:Z

    .line 35
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->isRead:Z

    .line 6046
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->f:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->mobile:Ljava/lang/String;

    .line 7046
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->g:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userName:Ljava/lang/String;

    .line 8046
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->h:J

    .line 38
    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->orgId:J

    .line 9046
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->i:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->orgName:Ljava/lang/String;

    .line 10046
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 40
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->orgApplyObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 11046
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->k:Z

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->showMobile:Z

    .line 12046
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->l:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->isHideConnection:Z

    .line 13046
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->m:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 43
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;
    .param p2, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;)V

    return-void
.end method
