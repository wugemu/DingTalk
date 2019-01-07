.class final Lejp$7;
.super Lgvg;
.source "HomeAttendanceManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejp;


# direct methods
.method constructor <init>(Lejp;)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 171
    iput-object p1, p0, Lejp$7;->a:Lejp;

    invoke-direct {p0}, Lgvg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lejp$7;->a:Lejp;

    .line 1048
    iget-boolean v0, v0, Lejp;->e:Z

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lejp$7;->a:Lejp;

    .line 2048
    invoke-virtual {v0}, Lejp;->a()V

    .line 177
    :cond_0
    return-void
.end method
