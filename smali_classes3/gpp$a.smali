.class public final Lgpp$a;
.super Ljava/lang/Object;
.source "CSpaceTraceUtils.java"

# interfaces
.implements Lyj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v0, 0xc8

    .line 131
    invoke-static {}, Lgpp;->a()I

    move-result v1

    .line 1142
    sparse-switch v1, :sswitch_data_0

    .line 1146
    :goto_0
    :sswitch_0
    return v0

    .line 1144
    :sswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 1142
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public final varargs a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v0, 0x14

    .line 136
    .line 1153
    sparse-switch p1, :sswitch_data_0

    .line 1164
    .local v0, "cSpaceLevel":I
    :goto_0
    :sswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1167
    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_0
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 1173
    :cond_1
    const-string/jumbo v1, "CSpace"

    .line 138
    .local v1, "cSpaceModule":Ljava/lang/String;
    :goto_2
    invoke-static {v1, v1, v0, p3, p4}, Lgpp;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void

    .line 1155
    .end local v0    # "cSpaceLevel":I
    .end local v1    # "cSpaceModule":Ljava/lang/String;
    :sswitch_1
    const/16 v0, 0xa

    goto :goto_0

    .line 1167
    .restart local v0    # "cSpaceLevel":I
    :sswitch_2
    const-string/jumbo v3, "cspace_download"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "cspace_upload"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .line 1169
    :pswitch_0
    const-string/jumbo v1, "cspace_download"

    goto :goto_2

    .line 1171
    :pswitch_1
    const-string/jumbo v1, "cspace_upload"

    goto :goto_2

    .line 1153
    .line 1167
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x35f7193c -> :sswitch_2
        0x271c8b3d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
