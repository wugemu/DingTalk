.class public final Ldfl$a;
.super Ljava/lang/Object;
.source "SvcGrpReplyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 1
    .param p1, "msgId"    # J
    .param p3, "answerId"    # Ljava/lang/String;
    .param p4, "isSendDirectly"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Ldfl$a;->b:J

    .line 19
    iput-object p3, p0, Ldfl$a;->c:Ljava/lang/String;

    .line 20
    iput-boolean p4, p0, Ldfl$a;->a:Z

    .line 21
    return-void
.end method
