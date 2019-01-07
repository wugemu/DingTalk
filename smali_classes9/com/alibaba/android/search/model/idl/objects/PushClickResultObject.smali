.class public Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;
.super Ljava/lang/Object;
.source "PushClickResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2d373c111829eaf8L


# instance fields
.field public c_t:J

.field public ext:Ljava/lang/String;

.field public kw:Ljava/lang/String;

.field public p_c:Ljava/lang/String;

.field public p_v:Ljava/lang/String;

.field public r_a:Z

.field public t:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDL(Leot;)Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;
    .locals 4
    .param p0, "pushClickResult"    # Leot;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;-><init>()V

    .line 27
    .local v0, "object":Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;
    iget-object v1, p0, Leot;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->uuid:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Leot;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->p_c:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Leot;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->p_v:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Leot;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->t:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Leot;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->v:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Leot;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->kw:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Leot;->g:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 33
    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->c_t:J

    .line 34
    iget-object v1, p0, Leot;->h:Ljava/lang/Boolean;

    .line 2022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 34
    iput-boolean v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->r_a:Z

    .line 35
    iget-object v1, p0, Leot;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushClickResultObject;->ext:Ljava/lang/String;

    goto :goto_0
.end method
