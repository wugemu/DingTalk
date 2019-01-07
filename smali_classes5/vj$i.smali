.class public final Lvj$i;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lvj$e;

.field public final c:Ljava/lang/String;

.field public final d:Lvj$e;

.field public final e:Ljava/lang/String;

.field public final f:Lvj$e;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvj$e;Lvj$e;Lvj$e;Ljava/util/List;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "calendar"    # Ljava/lang/String;
    .param p4, "textPartId"    # Lvj$e;
    .param p5, "htmlPartId"    # Lvj$e;
    .param p6, "calendarId"    # Lvj$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lvj$e;",
            "Lvj$e;",
            "Lvj$e;",
            "Ljava/util/List",
            "<",
            "Lvs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4100
    .local p7, "attachments":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4101
    iput-object p1, p0, Lvj$i;->a:Ljava/lang/String;

    .line 4102
    iput-object p2, p0, Lvj$i;->c:Ljava/lang/String;

    .line 4103
    iput-object p3, p0, Lvj$i;->e:Ljava/lang/String;

    .line 4104
    iput-object p4, p0, Lvj$i;->b:Lvj$e;

    .line 4105
    iput-object p5, p0, Lvj$i;->d:Lvj$e;

    .line 4106
    iput-object p7, p0, Lvj$i;->g:Ljava/util/List;

    .line 4107
    iput-object p6, p0, Lvj$i;->f:Lvj$e;

    .line 4108
    return-void
.end method
