.class Lclx$d;
.super Ljava/lang/Object;
.source "MailHtml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "face"    # Ljava/lang/String;

    .prologue
    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p1, p0, Lclx$d;->a:Ljava/lang/String;

    .line 876
    iput-object p2, p0, Lclx$d;->b:Ljava/lang/String;

    .line 877
    return-void
.end method
