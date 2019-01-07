.class public Lcom/alibaba/alimei/restfulapi/v2/data/NoteTag;
.super Ljava/lang/Object;
.source "NoteTag.java"


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteTag;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/NoteTag;->id:Ljava/lang/String;

    .line 18
    return-void
.end method
