.class public final Lgux;
.super Ljava/lang/Object;
.source "LevelUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lecw;
    .locals 3
    .param p0, "orgAuthLevel"    # I

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 26
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 20
    :pswitch_0
    new-instance v0, Lecw;

    sget v1, Lgtt$f;->icon_certification_f:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lgtt$b;->ui_common_orange_icon_bg_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 22
    :pswitch_1
    new-instance v0, Lecw;

    sget v1, Lgtt$f;->icon_certification_f:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lgtt$b;->ui_common_theme_bg_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 24
    :pswitch_2
    new-instance v0, Lecw;

    sget v1, Lgtt$f;->icon_certification_f:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lgtt$b;->ui_common_theme_bg_color:I

    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(I)Z
    .locals 1
    .param p0, "authLevel"    # I

    .prologue
    .line 57
    if-lez p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
