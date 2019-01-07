.class Lclx$f;
.super Ljava/lang/Object;
.source "MailHtml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    iput-object p1, p0, Lclx$f;->a:Ljava/lang/String;

    .line 885
    return-void
.end method
