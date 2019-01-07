.class public final Lgps$a;
.super Ljava/lang/Object;
.source "ConversationSpaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final b:I

.field c:I

.field public d:Ljava/lang/String;


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "isEncrypt"    # Z
    .param p2, "messageContentType"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lgps$a;->a:Z

    .line 44
    iput p2, p0, Lgps$a;->b:I

    .line 45
    return-void
.end method
