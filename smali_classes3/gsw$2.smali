.class final Lgsw$2;
.super Ljava/lang/Object;
.source "FaceRecordPresenter.java"

# interfaces
.implements Lgso$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgsw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgsw;


# direct methods
.method constructor <init>(Lgsw;)V
    .locals 0
    .param p1, "this$0"    # Lgsw;

    .prologue
    .line 127
    iput-object p1, p0, Lgsw$2;->a:Lgsw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V
    .locals 4
    .param p1, "checkResult"    # I
    .param p2, "faceDetectorFrame"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 130
    iget-object v1, p0, Lgsw$2;->a:Lgsw;

    .line 1048
    iget-boolean v1, v1, Lgsw;->b:Z

    .line 130
    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-nez p1, :cond_2

    .line 136
    iget-object v1, p0, Lgsw$2;->a:Lgsw;

    .line 2048
    iget-object v1, v1, Lgsw;->d:Lgsv$b;

    .line 136
    const-string/jumbo v2, "face_box_record_time_track_face_detected"

    invoke-interface {v1, v2}, Lgsv$b;->b(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lgsw$2;->a:Lgsw;

    .line 3299
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;->imageData:[B

    if-eqz v2, :cond_0

    .line 3302
    iput-boolean v3, v1, Lgsw;->b:Z

    .line 3303
    iget-object v2, v1, Lgsw;->g:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3306
    iget-object v2, v1, Lgsw;->d:Lgsv$b;

    new-instance v3, Lgsw$3;

    invoke-direct {v3, v1, p2}, Lgsw$3;-><init>(Lgsw;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V

    invoke-interface {v2, v3}, Lgsv$b;->a(Lgsm$a;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lgsw$2;->a:Lgsw;

    .line 4048
    iget v2, v1, Lgsw;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgsw;->a:I

    .line 140
    const/16 v1, 0xa

    if-le v2, v1, :cond_0

    .line 141
    iget-object v1, p0, Lgsw$2;->a:Lgsw;

    .line 5048
    const/4 v2, 0x0

    iput v2, v1, Lgsw;->a:I

    .line 142
    const-string/jumbo v0, ""

    .line 144
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 183
    :goto_1
    iget-object v1, p0, Lgsw$2;->a:Lgsw;

    .line 6048
    iget-object v1, v1, Lgsw;->d:Lgsv$b;

    .line 183
    invoke-interface {v1, v0}, Lgsv$b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "faceQuality"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, ""

    .line 148
    goto :goto_1

    .line 150
    :pswitch_1
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "hasface"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v0, ""

    .line 152
    goto :goto_1

    .line 154
    :pswitch_2
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "faceBrightness"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lgrv$f;->dt_facebox_error_face_uneven:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    goto :goto_1

    .line 158
    :pswitch_3
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "faceBrightness"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lgrv$f;->dt_facebox_error_toodark:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    goto :goto_1

    .line 162
    :pswitch_4
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "faceRect"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lgrv$f;->dt_facebox_error_tooclose:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    goto :goto_1

    .line 166
    :pswitch_5
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "faceRect"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lgrv$f;->dt_facebox_error_toofar:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    goto/16 :goto_1

    .line 170
    :pswitch_6
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "faceeyehwratio"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lgrv$f;->dt_facebox_error_not_blink:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    goto/16 :goto_1

    .line 174
    :pswitch_7
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "facemouthhwratio"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lgrv$f;->dt_facebox_error_not_open_mouse:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    goto/16 :goto_1

    .line 178
    :pswitch_8
    invoke-static {}, Lgta;->a()Lgta;

    move-result-object v1

    const-string/jumbo v2, "incomplete"

    invoke-virtual {v1, v2}, Lgta;->a(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lgrv$f;->dt_facebox_error_incomplete_face:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
