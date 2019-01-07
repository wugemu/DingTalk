.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
.super Ljava/lang/Object;
.source "SNNoticeObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_ADD:I = 0x1

.field public static final ACTION_DEL:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_NOTICE_LIST:Ljava/lang/String; = "extra_notice_list"

.field private static final LIKE_TXT:Ljava/lang/String;

.field public static final READ:I = 0x1

.field public static final UN_READ:I = 0x0

.field private static final serialVersionUID:J = -0x6ab790afd5dae59cL


# instance fields
.field public action:I

.field public comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

.field public contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

.field public createAt:J

.field public postId:J

.field public readState:I

.field public user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 55
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    sget v3, Lbpu$f;->dt_circle_action_like:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 56
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->LIKE_TXT:Ljava/lang/String;

    .line 158
    new-instance v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject$1;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject$1;-><init>()V

    sput-object v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    .line 155
    const-class v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 156
    return-void
.end method

.method public static fromIdl(Lbpm;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    .locals 6
    .param p0, "model"    # Lbpm;

    .prologue
    const-wide/16 v4, 0x0

    .line 109
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;-><init>()V

    .line 111
    .local v0, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    iget-object v1, p0, Lbpm;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 111
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    .line 112
    iget-object v1, p0, Lbpm;->b:Ljava/lang/Integer;

    .line 3033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 112
    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    .line 113
    iget-object v1, p0, Lbpm;->c:Lbps;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromIdl(Lbps;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 114
    iget-object v1, p0, Lbpm;->d:Lbpk;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->fromIdl(Lbpk;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 115
    iget-object v1, p0, Lbpm;->e:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 115
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    .line 116
    iget-object v1, p0, Lbpm;->f:Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->fromIdl(Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    goto :goto_0
.end method

.method public static inflate(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "noticeObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .line 74
    :cond_0
    return-object v1

    .line 61
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    .local v1, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 64
    .local v2, "noticeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    if-eqz v2, :cond_2

    .line 66
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 67
    .local v0, "commentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    if-eqz v0, :cond_2

    .line 69
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->postId:J

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public inflate()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 78
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;-><init>()V

    .line 79
    .local v0, "postObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    if-nez v1, :cond_0

    .line 83
    const-string/jumbo v1, "comment = null"

    .line 1076
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lbqh;->a(ZLjava/lang/String;)V

    .line 102
    :goto_0
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 105
    return-object v0

    .line 2019
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 86
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 91
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    if-nez v1, :cond_1

    .line 92
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->isComment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    sget-object v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->LIKE_TXT:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAdd()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 44
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelete()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toIdl()Lbpm;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 121
    new-instance v0, Lbpm;

    invoke-direct {v0}, Lbpm;-><init>()V

    .line 122
    .local v0, "result":Lbpm;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbpm;->a:Ljava/lang/Long;

    .line 123
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lbpm;->b:Ljava/lang/Integer;

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)Lbps;

    move-result-object v1

    iput-object v1, v0, Lbpm;->c:Lbps;

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Lbpk;

    move-result-object v1

    iput-object v1, v0, Lbpm;->d:Lbpk;

    .line 126
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbpm;->e:Ljava/lang/Long;

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;)Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    move-result-object v1

    iput-object v1, v0, Lbpm;->f:Lcom/alibaba/android/dingtalk/circle/idl/models/SNContentModel;

    .line 128
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 142
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    return-void
.end method
