.class public final Lgrc;
.super Ljava/lang/Object;
.source "SpaceFileUploadParam.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/alibaba/wukong/im/Conversation;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lgrc;->f:Z

    .line 38
    iput-boolean v0, p0, Lgrc;->g:Z

    .line 53
    iput-boolean v0, p0, Lgrc;->j:Z

    return-void
.end method
