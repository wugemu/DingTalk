.class public final Lacg$a;
.super Ljava/lang/Object;
.source "MailNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;IZ)V
    .locals 3
    .param p1, "imapHost"    # Ljava/lang/String;
    .param p2, "imapPort"    # I
    .param p3, "imapSSL"    # Z
    .param p4, "smtpHost"    # Ljava/lang/String;
    .param p5, "smtpPort"    # I
    .param p6, "smtpSSL"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5286
    iput-object v2, p0, Lacg$a;->a:Ljava/lang/String;

    .line 5287
    const/16 v0, 0x3e1

    iput v0, p0, Lacg$a;->b:I

    .line 5288
    iput-boolean v1, p0, Lacg$a;->c:Z

    .line 5290
    iput-object v2, p0, Lacg$a;->d:Ljava/lang/String;

    .line 5291
    const/16 v0, 0x1d1

    iput v0, p0, Lacg$a;->e:I

    .line 5292
    iput-boolean v1, p0, Lacg$a;->f:Z

    .line 5295
    iput-object p1, p0, Lacg$a;->a:Ljava/lang/String;

    .line 5296
    iput p2, p0, Lacg$a;->b:I

    .line 5297
    iput-boolean p3, p0, Lacg$a;->c:Z

    .line 5298
    iput-object p4, p0, Lacg$a;->d:Ljava/lang/String;

    .line 5299
    iput p5, p0, Lacg$a;->e:I

    .line 5300
    iput-boolean p6, p0, Lacg$a;->f:Z

    .line 5301
    return-void
.end method
