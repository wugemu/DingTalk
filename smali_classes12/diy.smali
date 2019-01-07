.class public final Ldiy;
.super Ljava/lang/Object;
.source "ChatEmotionInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldiy$a;
    }
.end annotation


# instance fields
.field public a:Ldix;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ldiy;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "topicId"    # J

    .prologue
    .line 35
    iget-object v0, p0, Ldiy;->a:Ldix;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Ldiy;->a:Ldix;

    invoke-interface {v0, p1, p2}, Ldix;->c(J)V

    .line 38
    :cond_0
    return-void
.end method
