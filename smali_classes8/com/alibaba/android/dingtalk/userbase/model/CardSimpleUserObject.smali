.class public final Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;
.super Ljava/lang/Object;
.source "CardSimpleUserObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public address:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public avatarMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public encodeUid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public friendStatus:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public gmtCreate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasRead:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public myself:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nameAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nickPinyin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgAuthLevel:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public remark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public roomId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tags:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public titleAuthed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Lchb;)Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;
    .locals 8
    .param p0, "model"    # Lchb;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    .line 83
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;-><init>()V

    .line 84
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;
    iget-object v1, p0, Lchb;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 84
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->uid:J

    .line 85
    iget-object v1, p0, Lchb;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->avatarMediaId:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lchb;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->name:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lchb;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->title:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lchb;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->orgId:J

    .line 89
    iget-object v1, p0, Lchb;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->orgName:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lchb;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->address:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lchb;->h:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 91
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->orgAuthed:Z

    .line 92
    iget-object v1, p0, Lchb;->i:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 92
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->titleAuthed:Z

    .line 93
    iget-object v1, p0, Lchb;->j:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 93
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->nameAuthed:Z

    .line 94
    iget-object v1, p0, Lchb;->k:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 94
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->roomId:J

    .line 95
    iget-object v1, p0, Lchb;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->location:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lchb;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->tags:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lchb;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->remark:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lchb;->o:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->gmtCreate:Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lchb;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->nickPinyin:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lchb;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->encodeUid:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lchb;->r:Ljava/lang/Boolean;

    .line 5022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 101
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->hasRead:Z

    .line 102
    iget-object v1, p0, Lchb;->s:Ljava/lang/Integer;

    .line 5033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 102
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->friendStatus:I

    .line 103
    iget-object v1, p0, Lchb;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->tel:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lchb;->u:Ljava/lang/Boolean;

    .line 6022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 104
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->myself:Z

    .line 105
    iget-object v1, p0, Lchb;->v:Ljava/lang/Integer;

    .line 6033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 105
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->orgAuthLevel:I

    goto/16 :goto_0
.end method


# virtual methods
.method public final toIdl()Lchb;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    new-instance v0, Lchb;

    invoke-direct {v0}, Lchb;-><init>()V

    .line 112
    .local v0, "model":Lchb;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lchb;->a:Ljava/lang/Long;

    .line 113
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lchb;->b:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lchb;->c:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lchb;->d:Ljava/lang/String;

    .line 116
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lchb;->e:Ljava/lang/Long;

    .line 117
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lchb;->f:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->address:Ljava/lang/String;

    iput-object v1, v0, Lchb;->g:Ljava/lang/String;

    .line 119
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->orgAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lchb;->h:Ljava/lang/Boolean;

    .line 120
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->titleAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lchb;->i:Ljava/lang/Boolean;

    .line 121
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->nameAuthed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lchb;->j:Ljava/lang/Boolean;

    .line 122
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->roomId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lchb;->k:Ljava/lang/Long;

    .line 123
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->location:Ljava/lang/String;

    iput-object v1, v0, Lchb;->l:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->tags:Ljava/lang/String;

    iput-object v1, v0, Lchb;->m:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->remark:Ljava/lang/String;

    iput-object v1, v0, Lchb;->n:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->gmtCreate:Ljava/lang/String;

    iput-object v1, v0, Lchb;->o:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Lchb;->p:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->encodeUid:Ljava/lang/String;

    iput-object v1, v0, Lchb;->q:Ljava/lang/String;

    .line 129
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->hasRead:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lchb;->r:Ljava/lang/Boolean;

    .line 130
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->friendStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lchb;->s:Ljava/lang/Integer;

    .line 131
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->tel:Ljava/lang/String;

    iput-object v1, v0, Lchb;->t:Ljava/lang/String;

    .line 132
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->myself:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lchb;->u:Ljava/lang/Boolean;

    .line 133
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CardSimpleUserObject;->orgAuthLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lchb;->v:Ljava/lang/Integer;

    .line 134
    return-object v0
.end method
