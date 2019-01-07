.class public Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;
.super Ljava/lang/Object;
.source "CircleNoticeObject.java"

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
            "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_NOTICE_LIST:Ljava/lang/String; = "extra_notice_list"

.field public static final READ:I = 0x1

.field public static final UN_READ:I = 0x0

.field private static final serialVersionUID:J = -0x6ab790afd5dae59cL


# instance fields
.field public action:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public createAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public postId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public readState:I

.field public user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    .line 165
    const-class v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 166
    return-void
.end method

.method public static fromIdl(Lfej;)Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;
    .locals 6
    .param p0, "model"    # Lfej;

    .prologue
    const-wide/16 v4, 0x0

    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;-><init>()V

    .line 121
    .local v0, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;
    iget-object v1, p0, Lfej;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 121
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    .line 122
    iget-object v1, p0, Lfej;->b:Ljava/lang/Integer;

    .line 3033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 122
    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    .line 123
    iget-object v1, p0, Lfej;->c:Lfeq;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromIdl(Lfeq;)Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 124
    iget-object v1, p0, Lfej;->d:Lfee;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->fromIdl(Lfee;)Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 125
    iget-object v1, p0, Lfej;->e:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 125
    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    .line 126
    iget-object v1, p0, Lfej;->f:Lfef;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->fromIdl(Lfef;)Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    goto :goto_0
.end method

.method public static inflate(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "noticeObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;>;"
    invoke-static {p0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    const/4 v1, 0x0

    .line 81
    :cond_0
    return-object v1

    .line 64
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    .local v1, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    .line 67
    .local v2, "noticeObject":Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;
    if-eqz v2, :cond_2

    .line 71
    iget-object v0, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 72
    .local v0, "commentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    if-eqz v0, :cond_2

    .line 76
    iget-wide v4, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    iput-wide v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->postId:J

    .line 78
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public inflate()Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;-><init>()V

    .line 86
    .local v1, "postObject":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    iput-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 87
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iput-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 89
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    if-nez v2, :cond_0

    .line 90
    const-string/jumbo v2, "comment = null"

    .line 1060
    invoke-static {v4, v2}, Lffe;->a(ZLjava/lang/String;)V

    .line 110
    :goto_0
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    iput-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    .line 111
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iput-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 113
    return-object v1

    .line 2020
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iput-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 93
    iget-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    iget-object v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iput-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 98
    iget-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    if-nez v2, :cond_1

    .line 99
    new-instance v2, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-direct {v2}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-virtual {v2}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->isComment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "["

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {}, Lffg;->a()Landroid/content/Context;

    move-result-object v4

    sget v5, Lezg$l;->dt_circle_action_like:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "likeString":Ljava/lang/String;
    iget-object v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iput-object v0, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public isAdd()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 53
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelete()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 57
    iget v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toIdl()Lfej;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 131
    new-instance v0, Lfej;

    invoke-direct {v0}, Lfej;-><init>()V

    .line 132
    .local v0, "result":Lfej;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfej;->a:Ljava/lang/Long;

    .line 133
    iget v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lfej;->b:Ljava/lang/Integer;

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;)Lfeq;

    move-result-object v1

    iput-object v1, v0, Lfej;->c:Lfeq;

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)Lfee;

    move-result-object v1

    iput-object v1, v0, Lfej;->d:Lfee;

    .line 136
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lfej;->e:Ljava/lang/Long;

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->toIdl(Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;)Lfef;

    move-result-object v1

    iput-object v1, v0, Lfej;->f:Lfef;

    .line 138
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 152
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    return-void
.end method
