.class public Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;
.super Ljava/lang/Object;
.source "CommentDraft.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_AT_UID:I


# instance fields
.field public combinedId:Ljava/lang/String;

.field public draftText:Ljava/lang/String;

.field public extra:[B

.field public extraType:I

.field public id:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "postId"    # J
    .param p3, "draftText"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->id:J

    .line 28
    iput-object p3, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->id:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extraType:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extra:[B

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->combinedId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "combinedId"    # Ljava/lang/String;
    .param p2, "draftText"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->combinedId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 0
    .param p1, "combinedId"    # Ljava/lang/String;
    .param p2, "draftText"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "extra"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->combinedId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extraType:I

    .line 40
    iput-object p4, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extra:[B

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "combinedId"    # Ljava/lang/String;
    .param p2, "draftText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "atUids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->combinedId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extraType:I

    .line 47
    invoke-static {p3}, Lbqp;->a(Ljava/util/Map;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extra:[B

    .line 48
    return-void
.end method

.method public static getCombinedId(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)Ljava/lang/String;
    .locals 6
    .param p0, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p1, "commentObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .prologue
    .line 51
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 56
    :goto_0
    return-object v4

    .line 52
    :cond_0
    if-nez p1, :cond_1

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 54
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 55
    .local v2, "postId":J
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    .line 56
    .local v0, "commentId":J
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->draftText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extraType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extra:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->combinedId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void
.end method
