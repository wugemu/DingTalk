.class abstract Lvj$g;
.super Lvj$h;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# instance fields
.field a:Lvs;


# direct methods
.method public constructor <init>(Lvs;)V
    .locals 0
    .param p1, "part"    # Lvs;

    .prologue
    .line 3965
    invoke-direct {p0}, Lvj$h;-><init>()V

    .line 3966
    iput-object p1, p0, Lvj$g;->a:Lvs;

    .line 3967
    return-void
.end method
